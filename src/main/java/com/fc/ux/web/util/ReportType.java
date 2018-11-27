package com.fc.ux.web.util;

/**
 * Created by hp m6 on 1/7/2016.
 *
 * @author Chamika Dilshan
 */

public enum ReportType {

    XLS("xls"),

    PDF("pdf"),

    CSV("csv");


    private final String value;

    ReportType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static ReportType fromValue(String v) {
        for (ReportType c: ReportType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }
}
