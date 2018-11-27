package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.sql.Timestamp;
/**
 * Created by anushikad on 8/30/2017.
 */
@Entity
@Table(name = "tripDetail")
public class TripDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long tripDetailId;

    private int tripId;
    private Timestamp tripStartTime;
    private Timestamp tripEndTime;
    private int DeviceId;
    private int tripAmount;

    public Long getTripDetailId() {
        return tripDetailId;
    }

    public void setTripDetailId(Long tripDetailId) {
        this.tripDetailId = tripDetailId;
    }

    public int getTripId() {
        return tripId;
    }

    public void setTripId(int tripId) {
        this.tripId = tripId;
    }

    public Timestamp getTripStartTime() {
        return tripStartTime;
    }

    public void setTripStartTime(Timestamp tripStartTime) {
        this.tripStartTime = tripStartTime;
    }

    public Timestamp getTripEndTime() {
        return tripEndTime;
    }

    public void setTripEndTime(Timestamp tripEndTime) {
        this.tripEndTime = tripEndTime;
    }

    public int getDeviceId() {
        return DeviceId;
    }

    public void setDeviceId(int deviceId) {
        DeviceId = deviceId;
    }

    public int getTripAmount() {
        return tripAmount;
    }

    public void setTripAmount(int tripAmount) {
        this.tripAmount = tripAmount;
    }
}
