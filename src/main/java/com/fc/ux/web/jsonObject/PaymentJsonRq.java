package com.fc.ux.web.jsonObject;

import com.fc.ux.persistence.model.Route;
import com.fc.ux.persistence.model.RouteSection;

import java.util.List;

public class PaymentJsonRq {

    protected String cardNumber;
    protected String transType;
    protected int amount;
    protected int tripId;
    protected int sectionIdStartId;
    protected int sectionIdEndId;
    protected int deviceId;
    protected long deviceTimeStamp;
    protected long serverTimeStamp;
    protected String referenceNo;

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getTransType() {
        return transType;
    }

    public void setTransType(String transType) {
        this.transType = transType;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getTripId() {
        return tripId;
    }

    public void setTripId(int tripId) {
        this.tripId = tripId;
    }

    public int getSectionIdStartId() {
        return sectionIdStartId;
    }

    public void setSectionIdStartId(int sectionIdStartId) {
        this.sectionIdStartId = sectionIdStartId;
    }

    public int getSectionIdEndId() {
        return sectionIdEndId;
    }

    public void setSectionIdEndId(int sectionIdEndId) {
        this.sectionIdEndId = sectionIdEndId;
    }

    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    public long getDeviceTimeStamp() {
        return deviceTimeStamp;
    }

    public void setDeviceTimeStamp(long deviceTimeStamp) {
        this.deviceTimeStamp = deviceTimeStamp;
    }

    public long getServerTimeStamp() {
        return serverTimeStamp;
    }

    public void setServerTimeStamp(long serverTimeStamp) {
        this.serverTimeStamp = serverTimeStamp;
    }

    public String getReferenceNo() {
        return referenceNo;
    }

    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
    }
}
