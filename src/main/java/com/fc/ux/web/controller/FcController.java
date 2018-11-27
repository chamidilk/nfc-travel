package com.fc.ux.web.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fc.ux.helper.FcException;
import com.fc.ux.persistence.dao.impl.*;
import com.fc.ux.persistence.model.*;
import com.fc.ux.web.jsonObject.*;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.MessageSource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(value = "/api")
public class FcController {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());


    @Autowired
    private BusRepository busRepository;

    @Autowired
    private  RouteRepository routeRepository;

    @Autowired
    private RouteSectionRepository routeSectionRepository;

    @Autowired
    private DeviceRepository deviceRepository;

    @Autowired
    private CardRepository cardRepository;

    @Autowired
    private MessageSource messages;

    @Autowired
    private ApplicationEventPublisher eventPublisher;

    /*@Autowired
    private UserDetailsService userDetailsService;*/

    @Autowired
    private CardTransactionRepository cardTransactionRepository;

    @Autowired
    private BusDeviceRepository busDeviceRepository;

    @Autowired
    private FareDetailRepository fareDetailRepository;

    @Autowired
    private Environment env;

    @Autowired
    private ObjectMapper jacksonObjectMapper;





    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public @ResponseBody
    String checkEmail() {

        return "success";
    }

    @RequestMapping(value = "/allbus", method = RequestMethod.GET)
    public @ResponseBody
    List<Bus> allBusses() {

        List<Bus> busList = new ArrayList<Bus>(0);

        Iterator<Bus> buses = busRepository.findAll().iterator();
        while (buses.hasNext()){
            busList.add(buses.next());
        }

        return busList;
    }

    @RequestMapping(value = "/bus", method = RequestMethod.GET)
    public @ResponseBody
    List<Bus> busByRegNumber(@RequestParam(value = "regNo") String regNo) {

        List<Bus> busList = busRepository.customerBusQuery(regNo);

        return busList;
    }


    @RequestMapping(value = "/fcpayment", method = RequestMethod.PUT)
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {FcException.class, Exception.class})
    public @ResponseBody
    PaymentJsonRes fcPayment(@RequestBody PaymentJsonRq rq) {

        Date serverTs = new Date();

        PaymentJsonRes res = new PaymentJsonRes();

        Device device = deviceRepository.findOne((long)rq.getDeviceId());

        if(device == null){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INVALID_DEVICE_ID.code(), ApiCodes.INVALID_DEVICE_ID.value()));
        }

        List<BusDevice> busDevices = busDeviceRepository.activeBusDevices((long)rq.getDeviceId());

        if(busDevices.size() == 0){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INVALID_DEVICE_ID.code(), ApiCodes.INVALID_DEVICE_ID.value()));
        }

        if(busDevices.size() != 1){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INCONSISTENT_BUS_DEVICE_MAPPING.code(), ApiCodes.INCONSISTENT_BUS_DEVICE_MAPPING.value()));
        }

        BusDevice busDevice = busDevices.get(0);


        Bus bus = busRepository.findOne(busDevice.getBusId());

        if(busDevices.size() != 1){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INCONSISTENT_BUS_DEVICE_MAPPING.code(), ApiCodes.INCONSISTENT_BUS_DEVICE_MAPPING.value()));
        }

        Route route = routeRepository.ActiveRoute(bus.getRouteId().intValue());

        RouteSection[] routeSections =  route.getRouteSectionsSet().toArray(new RouteSection[0]);

        Arrays.sort(routeSections, new Comparator<RouteSection>() {
            @Override
            public int compare(RouteSection o1, RouteSection o2) {
                return o1.getRouteSectionId() - o2.getRouteSectionId();
            }
        });

        if(Arrays.binarySearch(routeSections, rq.getSectionIdStartId()) == -1 || Arrays.binarySearch(routeSections, rq.getSectionIdEndId()) == -1){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INVALID_ROUTE.code(), ApiCodes.INVALID_ROUTE.value()));
        }


        List<Card> cards = cardRepository.findByCardNumber(rq.getCardNumber().trim());

        if(cards.size() == 0){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INVALID_CARD_NUMBER.code(), ApiCodes.INVALID_CARD_NUMBER.value()));
        }

        if(cards.size() != 1){
            throw new FcException(new ApiErrorResponse(rq.getDeviceId(), ApiCodes.INCONSISTENT_CARD_NUMBER.code(), ApiCodes.INCONSISTENT_CARD_NUMBER.value()));
        }

        Card card = cards.get(0);

        Cardtransaction cardtransaction =  new Cardtransaction();
        cardtransaction.setAmount(rq.getAmount());
        cardtransaction.setCardId(card.getCardId().intValue());
        cardtransaction.setDeviceId(rq.getDeviceId());
        cardtransaction.setDeviceTimeStamp(new Date(rq.getDeviceTimeStamp()));
        cardtransaction.setReferenceNo(rq.getReferenceNo().trim());
        cardtransaction.setSectionIdEnd(rq.getSectionIdEndId());
        cardtransaction.setSectionIdStart(rq.getSectionIdStartId());
        cardtransaction.setServerTimeStamp(serverTs);
        cardtransaction.setTransType(rq.getTransType());
        cardtransaction.setTripDetailId(rq.getTripId());

        card.setCardBalance(card.getCardBalance() - rq.getAmount());

        cardRepository.save(card);

        cardTransactionRepository.save(cardtransaction);






        res.setAppTs(serverTs.getTime() / 1000);

        res.setCode(ApiCodes.SUCCESS.code());
        res.setMessage(ApiCodes.SUCCESS.value());
        res.setReferenceNo(rq.getReferenceNo().trim());




        return res;
    }

    @RequestMapping(value = "/route", method = RequestMethod.GET)
    public @ResponseBody
    Route routeByDeviceId(@RequestParam(value = "deviceId") Long deviceId){
        System.out.println("from browser: "+deviceId);
        Device device= deviceRepository.findOne(deviceId);
        //Device device= deviceRepository.findByDeviceId(deviceId);

        System.out.println("from server: "+device.getStatus());

        Route route= routeRepository.ActiveRoute(device.getRouteId());


        System.out.println(route.getRouteSectionsSet());
        return route;
    }

    @RequestMapping(value = "/routestructure", method = RequestMethod.GET)
    public @ResponseBody
    Route routeSectionByDeviceId(@RequestParam(value = "deviceId") Long deviceId){
        LOGGER.info("Triggered API: routestructure. REQUEST PARAM deviceID: "+deviceId);
        Device device= deviceRepository.findOne(deviceId);
        if(device==null){
            return null;
        }
        Route route=routeRepository.ActiveRoute(device.getRouteId());
       // List<RouteSection> routeSectionList=routeSectionRepository.findByroute(route);
       //  List<RouteSection> routeSectionList=routeSectionRepository.customerRouteSection(route);

        // List<RouteJson> routeJsons = new ArrayList<RouteJson>(0);

        /*
        Iterator<RouteSection> itr= route.getRouteSectionsSet().iterator();

        List<RouteSection> routeSectionList=new ArrayList<RouteSection>(0);
        while(itr.hasNext()){
          routeSectionList.add(itr.next());
        }
        RouteJson routeJson=new RouteJson();
        routeJson.setRoute(route);
        //routeJson.setRouteSection(routeSectionList);
     */
        return route;


    }

    public Timestamp sqlDateConvert(Date javaDate) {
        java.sql.Timestamp sqlDateFrom = new java.sql.Timestamp(javaDate.getTime());
        return sqlDateFrom;
    }

    @RequestMapping(value = "/farestructure", method = RequestMethod.GET)
    public @ResponseBody
    List<FareDetail> getfareDetail() {
        Date dateobj = new Date();
        List<FareDetail> fareDetails=fareDetailRepository.fareStructure((sqlDateConvert(dateobj)));

        return fareDetails;
    }

    @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
    @ExceptionHandler(FcException.class)
    @ResponseBody
    public ApiErrorResponse ioErrorHandler(HttpServletRequest req,
                                           FcException t) throws JsonProcessingException {


//        loggerTX.debug(getJsonString(t.getError()));
        return t.getError();
    }

    @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
    @ExceptionHandler(Throwable.class)
    @ResponseBody
    public ApiErrorResponse ioOuterMostErrorHandler(HttpServletRequest req,
                                                    Throwable t) throws JsonProcessingException {

        ApiErrorResponse apiErrorResponse = new ApiErrorResponse(ApiCodes.PLATFORM_ERROR.code(), ApiCodes.PLATFORM_ERROR.value());

        t.printStackTrace();
//        loggerTX.debug(getJsonString(apiErrorResponse));

        return apiErrorResponse;
    }


    private <T> String getJsonString(T str) throws JsonProcessingException {


        return jacksonObjectMapper.writeValueAsString(str);
    }






}
