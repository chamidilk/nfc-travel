package com.fc.ux.spring;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fc.ux.persistence.dao.impl.ApiRepository;
import com.fc.ux.web.jsonObject.ApiCodes;
import com.fc.ux.web.jsonObject.ApiErrorResponse;
import com.fc.ux.web.jsonObject.PaymentJsonRes;
import com.fc.ux.web.jsonObject.PaymentJsonRq;
import com.fc.ux.web.util.AppFunctionCodes;
import com.fc.ux.web.util.RestUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.*;
import org.springframework.integration.annotation.IntegrationComponentScan;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.config.EnableIntegration;
import org.springframework.integration.core.MessageProducer;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.outbound.MqttPahoMessageHandler;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.integration.mqtt.support.MqttHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.messaging.MessagingException;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;


/**
 * Created by hp m6 on 6/5/2016.
 *
 * @author Chamika Dilshan
 */

@Configuration
@IntegrationComponentScan
@EnableIntegration
@PropertySource({ "classpath:app.properties" })
public class MqttListener {

    private static Logger logger = Logger.getLogger("server");
    private static Logger willLogger = Logger.getLogger("will");
    private static Logger heartbeatLogger = Logger.getLogger("heartbeat");

    private static Logger loggerRX = Logger.getLogger("serverRX");
    private static Logger loggerTX = Logger.getLogger("serverTX");



    @Value("${fc.api.url}")
    private String apiUrl;



    @Autowired
    private Environment env;

    @Autowired
    private MqttGateway mqttGateway;

    @Autowired
    private ApiRepository apiRepository;


    @Autowired
    private ObjectMapper jacksonObjectMapper;



    @Bean
    public MqttPahoClientFactory mqttClientFactory() {
        DefaultMqttPahoClientFactory factory = new DefaultMqttPahoClientFactory();
        factory.setServerURIs(new String[]{env.getProperty("mqtt.broker")});
        //factory.setPersistence(new MqttDefaultFilePersistence());
        //factory.setCleanSession(false);


        return factory;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttOutboundChannel")
    public MessageHandler mqttOutbound() {
        MqttPahoMessageHandler messageHandler =
                new MqttPahoMessageHandler(env.getProperty("mqtt.client.pub"), mqttClientFactory());
        messageHandler.setAsync(true);
        messageHandler.setDefaultTopic("sms");
        messageHandler.setDefaultQos(2);


        return messageHandler;
    }

    @Bean
    public MessageChannel mqttOutboundChannel() {
        return new DirectChannel();
    }

    @MessagingGateway(defaultRequestChannel = "mqttOutboundChannel", name = "mqttGateway")
    public interface MqttGateway {

        void sendToMqtt(String data, @Header(MqttHeaders.TOPIC) String topic, @Header(MqttHeaders.QOS) int qos);
        void sendToMqtt(String data, @Header(MqttHeaders.TOPIC) String topic);
        void sendToMqtt(String data);

    }


    @Bean
    public MessageChannel mqttInputChannel() {
        return new DirectChannel();
    }



    @Bean
    public MessageProducer inbound() {
        MqttPahoMessageDrivenChannelAdapter adapter =
                new MqttPahoMessageDrivenChannelAdapter(env.getProperty("mqtt.broker"), env.getProperty("mqtt.client.sub"),
                        "$share/cluster/R/+/D/+");
        adapter.setCompletionTimeout(5000);
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setQos(2);
        adapter.setOutputChannel(mqttInputChannel());


        return adapter;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInputChannel",autoStartup = "true")
    public MessageHandler mqttHandler() {
        return new MessageHandler() {

            @Override
            public void handleMessage(Message<?> message) throws MessagingException {

                String[] mqttTopicTok = message.getHeaders().get("mqtt_topic").toString().split("/");

                try {
                switch (AppFunctionCodes.fromValue(mqttTopicTok[1])) {
                    case FC_PAYMENT: {

                            loggerRX.debug(message.getPayload());




                            PaymentJsonRq rq = getObject(PaymentJsonRq.class, message.getPayload().toString());

                            PaymentJsonRes res = apiRepository.fcPayment(rq);



                            mqttGateway.sendToMqtt(getJsonString(res), "T/".concat(mqttTopicTok[1]).concat("/D/").concat(mqttTopicTok[3]), 2);
                    }
                    break;

                }




            }catch (IOException io) {
                    try {
                        mqttGateway.sendToMqtt(getJsonString(new ApiErrorResponse(ApiCodes.PLATFORM_ERROR.code(),ApiCodes.PLATFORM_ERROR.value())),"T/".concat(mqttTopicTok[1]).concat("/D/").concat(mqttTopicTok[3]),2);
                    } catch (JsonProcessingException e) {

                    }
                } catch (Exception ex){
                    try {
                        mqttGateway.sendToMqtt(getJsonString(new ApiErrorResponse(ApiCodes.PLATFORM_ERROR.code(),ApiCodes.PLATFORM_ERROR.value())),"T/".concat(mqttTopicTok[1]).concat("/D/").concat(mqttTopicTok[3]),2);
                    } catch (JsonProcessingException e) {

                    }
                }

            }


        };
    }





    private <T> T getObject(Class<T> obj,String str) throws IOException {

        return jacksonObjectMapper.readValue(str, obj);
    }

    private <T> String getJsonString(T str) throws JsonProcessingException {

        return jacksonObjectMapper.writeValueAsString(str);
    }

    private <T>  HttpEntity getHttpEntity(T str) throws JsonProcessingException {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity httpEntity = new HttpEntity(jacksonObjectMapper.writeValueAsString(str),headers);

        return httpEntity;
    }






}
