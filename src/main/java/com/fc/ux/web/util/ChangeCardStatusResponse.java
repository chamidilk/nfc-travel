package com.fc.ux.web.util;

/**
 * Created by hp m6 on 12/16/2015.
 *
 * @author Chamika Dilshan
 */

public class ChangeCardStatusResponse {

    private boolean success;
    private String cardStatus;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getCardStatus() {
        return cardStatus;
    }

    public void setCardStatus(String cardStatus) {
        this.cardStatus = cardStatus;
    }
}
