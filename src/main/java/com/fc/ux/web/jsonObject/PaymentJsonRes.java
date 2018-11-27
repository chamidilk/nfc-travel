package com.fc.ux.web.jsonObject;

public class PaymentJsonRes {

    private long appTs;
    private int code;
    private String message;


    protected String referenceNo;


    public long getAppTs() {
        return appTs;
    }

    public void setAppTs(long appTs) {
        this.appTs = appTs;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getReferenceNo() {
        return referenceNo;
    }

    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
    }
}
