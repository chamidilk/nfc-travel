package com.fc.ux.spring;


import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.event.SimpleApplicationEventMulticaster;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.Properties;

/**
 * Created by hp m6 on 12/7/2015.
 *
 * @author Chamika Dilshan
 */


@Configuration
@ComponentScan(basePackages = {"com.fc.ux.listener"})
//@PropertySource(value = {"file:${fc.repo.location}/app.properties"}, ignoreResourceNotFound = false)
@PropertySource({ "classpath:app.properties" })
public class AppConfig {

    @Autowired
    private Environment env;



    @Bean
    public String tnc(){

        return (env.getProperty("fc.tnc"));
    }

    @Bean
    public ObjectMapper objectMapper(){

        ObjectMapper ret = new ObjectMapper();

        ret.configure(DeserializationFeature.UNWRAP_ROOT_VALUE,false);
        ret.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES,false);
        ret.configure(SerializationFeature.INDENT_OUTPUT,true);
        ret.configure(SerializationFeature.WRAP_ROOT_VALUE,false);

        return ret;
    }

    private CredentialsProvider provider() {
        CredentialsProvider provider = new BasicCredentialsProvider();
        UsernamePasswordCredentials credentials =
                new UsernamePasswordCredentials(env.getProperty("fc.username"), env.getProperty("fc.password"));
        provider.setCredentials(AuthScope.ANY, credentials);
        return provider;
    }

    @Bean
    public JavaMailSenderImpl javaMailSenderImpl() {
        final JavaMailSenderImpl mailSenderImpl = new JavaMailSenderImpl();
        mailSenderImpl.setHost(env.getProperty("smtp.host"));
        mailSenderImpl.setPort(env.getProperty("smtp.port", Integer.class));
        //mailSenderImpl.setProtocol(env.getProperty("smtp.protocol"));
        mailSenderImpl.setUsername(env.getProperty("smtp.username"));
        mailSenderImpl.setPassword(env.getProperty("smtp.password"));
        final Properties javaMailProps = new Properties();
        javaMailProps.put("mail.smtp.auth", true);
        javaMailProps.put("mail.smtp.starttls.enable", true);
        mailSenderImpl.setJavaMailProperties(javaMailProps);
        return mailSenderImpl;
    }

    @Bean
    public ThreadPoolTaskExecutor taskExecutor(){
        final ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();

        return taskExecutor;
    }



    @Bean
    public SimpleApplicationEventMulticaster applicationEventMulticaster(){
        final SimpleApplicationEventMulticaster multicaster = new SimpleApplicationEventMulticaster();
        multicaster.setTaskExecutor(taskExecutor());

        return multicaster;
    }
}
