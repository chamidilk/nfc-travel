package com.fc.ux.web.util;

/**
 * Created by hp m6 on 12/14/2015.
 *
 * @author Chamika Dilshan
 */

public class ViewCardResponse {



    private String customerName;
    private String customerNic;
    private String mobileNo;
    private String latestActivity;

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerNic() {
        return customerNic;
    }

    public void setCustomerNic(String customerNic) {
        this.customerNic = customerNic;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getLatestActivity() {
        return latestActivity;
    }

    public void setLatestActivity(String latestActivity) {
        this.latestActivity = latestActivity;
    }

}
