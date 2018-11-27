package com.fc.ux.helper;

import com.fc.ux.web.jsonObject.ApiErrorResponse;

public class FcException extends IllegalArgumentException {
    protected ApiErrorResponse error;

    public FcException(ApiErrorResponse error) {
        this.error = error;
    }

    public ApiErrorResponse getError() {
        return error;
    }

    public void setError(ApiErrorResponse error) {
        this.error = error;
    }
}
