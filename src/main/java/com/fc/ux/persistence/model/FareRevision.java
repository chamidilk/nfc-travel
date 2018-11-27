package com.fc.ux.persistence.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by sewwandiwi on 11/10/2017.
 */
@Entity
@Table(name = "farerevision")
public class FareRevision {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ID;

    private Date RevisedDate;

    private Date ValidFrom;

    private Date ValidTo;

    private String Status;

    private  String BusCategory;

    private String Comments;

    private String UploadedByUserId;

    private String ApprovedByUserId;

    private String FileLocation;

    @OneToMany(cascade = { CascadeType.ALL}, fetch = FetchType.EAGER, mappedBy = "fareRevision")
    @LazyCollection(LazyCollectionOption.FALSE)
    private Set<FareDetail> fareDetailsSet;


    public FareRevision() {
        if (this.getFareDetailsSet() == null) {
            this.setFareDetailsSet(new HashSet<FareDetail>());
        }
    }

    public void addFareDetail(FareDetail fareDetail) {
        fareDetail.setFareRevision(this);
        this.getFareDetailsSet().add(fareDetail);
    }


    public String getBusCategory() {
        return BusCategory;
    }

    public void setBusCategory(String busCategory) {
        BusCategory = busCategory;
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public Date getRevisedDate() {
        return RevisedDate;
    }

    public void setRevisedDate(Date revisedDate) {
        RevisedDate = revisedDate;
    }

    public Date getValidFrom() {
        return ValidFrom;
    }

    public void setValidFrom(Date validFrom) {
        ValidFrom = validFrom;
    }

    public Date getValidTo() {
        return ValidTo;
    }

    public void setValidTo(Date validTo) {
        ValidTo = validTo;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public String getComments() {
        return Comments;
    }

    public void setComments(String comments) {
        Comments = comments;
    }

    public String getUploadedByUserId() {
        return UploadedByUserId;
    }

    public void setUploadedByUserId(String uploadedByUserId) {
        UploadedByUserId = uploadedByUserId;
    }

    public String getApprovedByUserId() {
        return ApprovedByUserId;
    }

    public void setApprovedByUserId(String approvedByUserId) {
        ApprovedByUserId = approvedByUserId;
    }

    public Set<FareDetail> getFareDetailsSet() {
        return fareDetailsSet;
    }

    public void setFareDetailsSet(Set<FareDetail> fareDetailsSet) {
        this.fareDetailsSet = fareDetailsSet;
    }

    public String getFileLocation() {
        return FileLocation;
    }

    public void setFileLocation(String fileLocation) {
        FileLocation = fileLocation;
    }
}
