package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "cardtransaction")
public class Cardtransaction {

    @Id
    private Integer cardTransactionId;

    private Integer cardId;
    private String transType;
    private Integer amount;
    private Integer tripDetailId;
    private Integer sectionIdStart;
    private Integer sectionIdEnd;
    private Integer deviceId;
    private Date deviceTimeStamp;
    private Date serverTimeStamp;
    private String referenceNo;

    @Id
    @Column(name = "CardTransactionId")
    public Integer getCardTransactionId() {
        return cardTransactionId;
    }

    public void setCardTransactionId(Integer cardTransactionId) {
        this.cardTransactionId = cardTransactionId;
    }

    @Basic
    @Column(name = "CardId")
    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    @Basic
    @Column(name = "TransType")
    public String getTransType() {
        return transType;
    }

    public void setTransType(String transType) {
        this.transType = transType;
    }

    @Basic
    @Column(name = "Amount")
    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    @Basic
    @Column(name = "TripDetailId")
    public Integer getTripDetailId() {
        return tripDetailId;
    }

    public void setTripDetailId(Integer tripDetailId) {
        this.tripDetailId = tripDetailId;
    }

    @Basic
    @Column(name = "SectionIdStart")
    public Integer getSectionIdStart() {
        return sectionIdStart;
    }

    public void setSectionIdStart(Integer sectionIdStart) {
        this.sectionIdStart = sectionIdStart;
    }

    @Basic
    @Column(name = "SectionIdEnd")
    public Integer getSectionIdEnd() {
        return sectionIdEnd;
    }

    public void setSectionIdEnd(Integer sectionIdEnd) {
        this.sectionIdEnd = sectionIdEnd;
    }

    @Basic
    @Column(name = "DeviceId")
    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    @Basic
    @Column(name = "DeviceTimeStamp")
    public Date getDeviceTimeStamp() {
        return deviceTimeStamp;
    }

    public void setDeviceTimeStamp(Date deviceTimeStamp) {
        this.deviceTimeStamp = deviceTimeStamp;
    }

    @Basic
    @Column(name = "ServerTimeStamp")
    public Date getServerTimeStamp() {
        return serverTimeStamp;
    }

    public void setServerTimeStamp(Date serverTimeStamp) {
        this.serverTimeStamp = serverTimeStamp;
    }

    @Basic
    @Column(name = "ReferenceNo")
    public String getReferenceNo() {
        return referenceNo;
    }

    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cardtransaction that = (Cardtransaction) o;

        if (cardTransactionId != that.cardTransactionId) return false;
        if (cardId != that.cardId) return false;
        if (transType != null ? !transType.equals(that.transType) : that.transType != null) return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (tripDetailId != null ? !tripDetailId.equals(that.tripDetailId) : that.tripDetailId != null) return false;
        if (sectionIdStart != null ? !sectionIdStart.equals(that.sectionIdStart) : that.sectionIdStart != null)
            return false;
        if (sectionIdEnd != null ? !sectionIdEnd.equals(that.sectionIdEnd) : that.sectionIdEnd != null) return false;
        if (deviceId != null ? !deviceId.equals(that.deviceId) : that.deviceId != null) return false;
        if (deviceTimeStamp != null ? !deviceTimeStamp.equals(that.deviceTimeStamp) : that.deviceTimeStamp != null)
            return false;
        if (serverTimeStamp != null ? !serverTimeStamp.equals(that.serverTimeStamp) : that.serverTimeStamp != null)
            return false;
        if (referenceNo != null ? !referenceNo.equals(that.referenceNo) : that.referenceNo != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cardTransactionId;
        result = 31 * result + cardId;
        result = 31 * result + (transType != null ? transType.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (tripDetailId != null ? tripDetailId.hashCode() : 0);
        result = 31 * result + (sectionIdStart != null ? sectionIdStart.hashCode() : 0);
        result = 31 * result + (sectionIdEnd != null ? sectionIdEnd.hashCode() : 0);
        result = 31 * result + (deviceId != null ? deviceId.hashCode() : 0);
        result = 31 * result + (deviceTimeStamp != null ? deviceTimeStamp.hashCode() : 0);
        result = 31 * result + (serverTimeStamp != null ? serverTimeStamp.hashCode() : 0);
        result = 31 * result + (referenceNo != null ? referenceNo.hashCode() : 0);
        return result;
    }
}
