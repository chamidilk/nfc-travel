package com.fc.ux.helper;

/**
 * Created by hp m6 on 1/24/2016.
 *
 * @author Chamika Dilshan
 */

public enum CardCollectionModeHelper {

    BRANCH("BRANCH"), POST("POST");


    private final String value;

    CardCollectionModeHelper(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static CardCollectionModeHelper fromValue(String v) {
        for (CardCollectionModeHelper c: CardCollectionModeHelper.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }
}
