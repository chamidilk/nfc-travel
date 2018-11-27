package com.fc.ux.web.util;

/**
 * Created by hp m6 on 12/30/2015.
 *
 * @author Chamika Dilshan
 */

public enum AppFunctionCodes {

    FC_PAYMENT(1,"fp"),
    FC_FULL_ROLLBACK(2,"frb"),
    FC_PARTIAL_ROLLBACK(3,"prb"),
    UNKNOWN(-1,"ni"),
    HEARTBEAT(0,"hb"),
    WILL(-2,"wm"),
    DEVICE_PROFILE(-3,"dp"),
    CARD_UPDATE(-4,"cu"),
    CHECK_BALANCE(-5,"cb"),
    PRINT_DUP(-6,"pd"),
    COMPANY_LIST(-7,"cl"),
    SUMMARY(-8,"ts"),
    VOID_REQUEST(-9,"vr"),
    VOID_CONFIRM(-10,"vc"),
    TRANSACTION_ACK(-11,"ta"),
    CARD_ENCODE(-12,"ce");

    private final int code;
    private final String value;

    AppFunctionCodes(int c, String v) {
        code = c;
        value = v;
    }

    public String value() {
        return value;
    }

    public int code(){
        return code;
    }

    public static AppFunctionCodes fromValue(String v) {
        for (AppFunctionCodes c: AppFunctionCodes.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        return AppFunctionCodes.UNKNOWN;
    }

}