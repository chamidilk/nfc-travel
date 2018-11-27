package com.fc.ux.persistence.model;

import javax.persistence.*;

/**
 * Created by anushikad on 8/31/2017.
 */
@Entity
@Table(name = "busowner")
public class BusOwner {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long busOwnerId;

    private Long userId;
    private String busOwnerName;
    private String bank;
    private String bankAccNo;
    private String branch;
    private String branchCode;
    private String accountName;
    private String status;


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

    public String getBusOwnerName() {
        return busOwnerName;
    }

    public void setBusOwnerName(String busOwnerName) {
        this.busOwnerName = busOwnerName;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBankAccNo() {
        return bankAccNo;
    }

    public void setBankAccNo(String bankAccNo) {
        this.bankAccNo = bankAccNo;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getBranchCode() {
        return branchCode;
    }

    public void setBranchCode(String branchCode) {
        this.branchCode = branchCode;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
