package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by anushikad on 8/30/2017.
 */
@Entity
@Table(name = "conductor")
public class Conductor {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int ConductorId;


    private Long busOwnerId;
    private Long userId;

    public int getConductorId() {
        return ConductorId;
    }

    public void setConductorId(int conductorId) {
        ConductorId = conductorId;
    }

    public Long getBusOwnerId() {
        return busOwnerId;
    }

    public void setBusOwnerId(Long busOwnerId) {
        this.busOwnerId = busOwnerId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}
