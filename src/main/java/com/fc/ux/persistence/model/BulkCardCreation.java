package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by anushikad on 8/30/2017.
 */
@Entity
@Table(name = "bulkcardcreation")
public class BulkCardCreation {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long BulkCardCreationId;


    private String CreatedByUserId;
    private Date CreatedDate;
    private int CardIssuerBlockId;
    private int BlockSize;

    public Long getBulkCardCreationId() {
        return BulkCardCreationId;
    }

    public void setBulkCardCreationId(Long bulkCardCreationId) {
        BulkCardCreationId = bulkCardCreationId;
    }

    public String getCreatedByUserId() {
        return CreatedByUserId;
    }

    public void setCreatedByUserId(String createdByUserId) {
        CreatedByUserId = createdByUserId;
    }

    public Date getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(Date createdDate) {
        CreatedDate = createdDate;
    }

    public int getCardIssuerBlockId() {
        return CardIssuerBlockId;
    }

    public void setCardIssuerBlockId(int cardIssuerBlockId) {
        CardIssuerBlockId = cardIssuerBlockId;
    }

    public int getBlockSize() {
        return BlockSize;
    }

    public void setBlockSize(int blockSize) {
        BlockSize = blockSize;
    }
}
