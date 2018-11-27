package com.fc.ux.persistence.dao.impl;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fc.ux.web.jsonObject.ApiErrorResponse;
import com.fc.ux.web.jsonObject.PaymentJsonRes;
import com.fc.ux.web.jsonObject.PaymentJsonRq;
import com.fc.ux.web.util.RestUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;

@Service
public class ApiRepository {


    @Value("${fc.api.url}")
    private String apiUrl;

    @Autowired
    private ObjectMapper jacksonObjectMapper;


    public PaymentJsonRes fcPayment(PaymentJsonRq rq) throws Exception {

        PaymentJsonRes res = new PaymentJsonRes();
        RestTemplate restTemplate = new RestTemplate();

        HttpEntity httpEntity = getHttpEntity(rq);

        ResponseEntity<String> response = restTemplate.exchange(
                apiUrl + "/fcpayment" , HttpMethod.PUT,httpEntity,
                String.class);

        if (RestUtil.isError(response.getStatusCode())) {


            ApiErrorResponse errorResponse = jacksonObjectMapper.readValue(
                    response.getBody(), ApiErrorResponse.class);

            throw new Exception("Äpi error");


        } else {
            res = jacksonObjectMapper.readValue(response.getBody(),
                    PaymentJsonRes.class);

            return res;
        }
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
