package com.fc.ux.persistence.param;

/**
 * Created by hp m6 on 1/14/2016.
 *
 * @author Chamika Dilshan
 */

public enum CardStatus {
    ACTIVE("ACTIVE"), NOT_ASSIGNED("NOT_ASSIGNED"), INACTIVE("INACTIVE"), HOT_UPDATE("HOT_UPDATE"), SYNC_REQUIRED("SYNC_REQUIRED"), BLACKLISTED("BLACKLISTED");


    private final String value;

    CardStatus(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static CardStatus fromValue(String v) {
        for (CardStatus c: CardStatus.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }
}
