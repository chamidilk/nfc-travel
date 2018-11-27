package com.fc.ux.persistence.param;

/**
 * Created by hp m6 on 1/14/2016.
 *
 * @author Chamika Dilshan
 */

public enum DeliveryMethod {
    BRANCH("BRANCH"), POST("POST");


    private final String value;

    DeliveryMethod(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static DeliveryMethod fromValue(String v) {
        for (DeliveryMethod c: DeliveryMethod.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }
}
