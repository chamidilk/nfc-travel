package com.fc.ux.persistence.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

/**
 * Created by shanikah on 05/07/2018.
 */

@Entity
@Table(name = "normalfare")
public class FareDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ID;

   // private Long FareRevisionID;

    private int FareStage;

    private int FareValue;


    @ManyToOne(targetEntity = FareRevision.class)
    @JoinColumn(name = "FareRevisionID", nullable = false)
    @JsonBackReference
    private FareRevision fareRevision;


    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public int getFareStage() {
        return FareStage;
    }

    public void setFareStage(int fareStage) {
        FareStage = fareStage;
    }

    public int getFareValue() {
        return FareValue;
    }

    public void setFareValue(int fareValue) {
        FareValue = fareValue;
    }

    public FareRevision getFareRevision() {
        return fareRevision;
    }

    public void setFareRevision(FareRevision fareRevision) {
        this.fareRevision = fareRevision;
    }
}
