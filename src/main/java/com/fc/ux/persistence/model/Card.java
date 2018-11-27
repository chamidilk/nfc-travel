package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by anushikad on 8/30/2017.
 */
@Entity
@Table(name = "card")
public class Card {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long cardId;


    private String cardNumber;
    private Date expiryDate;
    private Date issuedDate;
    private String status;
    private Long userId;
    private Integer cardBalance;
    private String firstName;
    private String lastName;
    private Long uid;
    private int IsCondductor;


    public Long getCardId() {
        return cardId;
    }

    public void setCardId(Long cardId) {
        this.cardId = cardId;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public Date getIssuedDate() {
        return issuedDate;
    }

    public void setIssuedDate(Date issuedDate) {
        this.issuedDate = issuedDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Integer getCardBalance() {
        return cardBalance;
    }

    public void setCardBalance(Integer cardBalance) {
        this.cardBalance = cardBalance;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getIsCondductor() {
        return IsCondductor;
    }

    public void setIsCondductor(int isCondductor) {
        IsCondductor = isCondductor;
    }
}
