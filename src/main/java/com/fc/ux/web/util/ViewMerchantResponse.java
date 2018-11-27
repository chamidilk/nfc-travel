package com.fc.ux.web.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hp m6 on 12/14/2015.
 *
 * @author Chamika Dilshan
 */

public class ViewMerchantResponse {

    private List<String[]> data;
    private Long recordsFiltered;
    private Long recordsTotal;

    public ViewMerchantResponse() {
        data = new ArrayList<String[]>();
    }

    public Long getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(Long recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public Long getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(Long recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public List<String[]> getData() {
        return data;
    }

    public void setData(List<String[]> data) {
        this.data = data;
    }
}
