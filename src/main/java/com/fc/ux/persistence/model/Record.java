package com.fc.ux.persistence.model;

// Generated Nov 23, 2015 7:03:48 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.*;
import java.util.Date;

/**
 * TFuelCompany generated by hbm2java
 */
@Entity
@Table(name = "device")
public class Record {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long deviceId;

	private int serialNo;
	private String status;
	private Date issuedDate;
	private String busRegNo;
	private Long busOwnerId;

    public Long getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }

    public int getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(int serialNo) {
        this.serialNo = serialNo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getIssuedDate() {
        return issuedDate;
    }

    public void setIssuedDate(Date issuedDate) {
        this.issuedDate = issuedDate;
    }

    public String getBusRegNo() {
        return busRegNo;
    }

    public void setBusRegNo(String busRegNo) {
        this.busRegNo = busRegNo;
    }

    public Long getBusOwnerId() {
        return busOwnerId;
    }

    public void setBusOwnerId(Long busOwnerId) {
        this.busOwnerId = busOwnerId;
    }

}
