package com.fc.ux.persistence.model;

import javax.persistence.*;

/**
 * Created by sewwandiwi on 6/19/2018.
 */
@Entity
@Table(name = "bus")
public class Bus {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long busId;

    private Long busOwnerId;
    private String busRegistrationNumber;
    private String routePermitId;
    private String busCategory;
    private Long routeId;
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getBusId() {
        return busId;
    }

    public void setBusId(Long busId) {
        this.busId = busId;
    }

    public Long getBusOwnerId() {
        return busOwnerId;
    }

    public void setBusOwnerId(Long busOwnerId) {
        this.busOwnerId = busOwnerId;
    }

    public String getBusRegistrationNumber() {
        return busRegistrationNumber;
    }

    public void setBusRegistrationNumber(String busRegistrationNumber) {
        this.busRegistrationNumber = busRegistrationNumber;
    }

    public String getRoutePermitId() {
        return routePermitId;
    }

    public void setRoutePermitId(String routePermitId) {
        this.routePermitId = routePermitId;
    }

    public String getBusCategory() {
        return busCategory;
    }

    public void setBusCategory(String busCategory) {
        this.busCategory = busCategory;
    }

    public Long getRouteId() {
        return routeId;
    }

    public void setRouteId(Long routeId) {
        this.routeId = routeId;
    }
}
