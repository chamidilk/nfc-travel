package com.fc.ux.web.jsonObject;

/**
 * Created by hp m6 on 12/30/2015.
 *
 * @author Chamika Dilshan
 */

public enum ApiCodes {

    SUCCESS(1000,"success"),

    PLATFORM_ERROR(2006, "platform error"),

    INVALID_DEVICE_ID(3001, "invalid device id"),

    INVALID_CARD_NUMBER(3002, "invalid card number"),

    PLATFORM_API_ERROR(3003, "platform api error"),

    PLATFORM_USER_ERROR(3004, "platform user error"),

    NO_VEHICLE(3005, "no vehicle"),

    UNKNOWN_CUSTOMIZATION_PARAMETER(3006, "unknown customization parameter"),

    INSUFFICIENT_PARAMETER_MAP(3007, "insufficient parameter map"),

    INVALID_CUSTOMIZATION_VALUE(3007, "invalid customization value"),

    NULL_ERROR(3008, "null error"),

    EXCESS_NOT_ALLOWED(3009, "excess not allowed"),

    INVALID_TRANSACTION_DATA(3010, "invalid data for rollback"),

    NOT_ACTIVE_TRANSACTION(3011, "not active transaction"),

    NOT_IN_SAME_MONTH(3012, "not in same month"),

    USAGE_OR_COMPANY_DEACT(3013, "usage or company deact"),

    INVALID_TR_COUNT(3014, "invalid tr count (%d,%d)"),

    COMPANY_BIND_ERROR(3015, "company not allowed"),

    DUPLICATE_DEVICE_SEQUENCE_NO(3016, "duplicate sequence no"),

    INVALID_FUEL_TYPE(3017, "invalid fuel type"),

    INVALID_DEVICE_CUSTOMIZATION(3018, "invalid deposit type"),

    FILE_UPLOAD_ERROR(3019, "file upload error"),

    INVALID_TR_COUNT_LOG(3020, "invalid tr count (%s,%d,%d)"),

    CARD_SYNC_ERROR(3021, "card sync error"),

    CARD_SYNC_CODE_ERROR(3022, "card sync - %s"),

    FIRMWARE_VERSION_MISMATCH(3023,"update firmware"),

    NO_TRANSACTION(3024, "no transaction"),

    INCONSISTENT_CARD_NUMBER(3025, "inconsistent card number"),

    INCONSISTENT_BUS_DEVICE_MAPPING(3026, "inconsistent bus device mapping"),

    INVALID_ROUTE(3027, "invalid route");

    private final int code;
    private final String value;

    ApiCodes(int c, String v) {
        code = c;
        value = v;
    }

    public String value() {
        return value;
    }

    public int code(){
        return code;
    }

}