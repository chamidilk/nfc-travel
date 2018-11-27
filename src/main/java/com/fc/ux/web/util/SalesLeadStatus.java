package com.fc.ux.web.util;

/**
 * Created by hp m6 on 1/7/2016.
 *
 * @author Chamika Dilshan
 */

public enum SalesLeadStatus {

    PENDING("PENDING"),

    ACCEPTED("ACCEPTED"),

    REJECTED("REJECTED");


    private final String value;

    SalesLeadStatus(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static SalesLeadStatus fromValue(String v) {
        for (SalesLeadStatus c: SalesLeadStatus.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }
}
