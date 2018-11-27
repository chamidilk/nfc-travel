package com.fc.ux.persistence.model;

import javax.persistence.*;

/**
 * Created by shanikah on 9/12/2018.
 */
@Entity
@Table (name="settlementparty")
public class CommissionSettlementParty {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long SettlementPartyId;

    private String SettlementPartyName;

    private String CommissionPercentage;

    private String BankAccNo;

    private String Bank;

    private String Branch;

    private String BranchCode;

    private String AccountName;

    @ManyToOne (targetEntity = CommissionStructure.class)
    @JoinColumn(name = "CommissionId", nullable = false)
    private CommissionStructure commissionStructure;

   // private String CommissionId;


    public long getSettlementPartyId() {
        return SettlementPartyId;
    }

    public void setSettlementPartyId(long settlementPartyId) {
        SettlementPartyId = settlementPartyId;
    }

    public String getSettlementPartyName() {
        return SettlementPartyName;
    }

    public void setSettlementPartyName(String settlementPartyName) {
        SettlementPartyName = settlementPartyName;
    }

    public String getCommissionPercentage() {
        return CommissionPercentage;
    }

    public void setCommissionPercentage(String commissionPercentage) {
        CommissionPercentage = commissionPercentage;
    }

    public String getBankAccNo() {
        return BankAccNo;
    }

    public void setBankAccNo(String bankAccNo) {
        BankAccNo = bankAccNo;
    }

    public String getBank() {
        return Bank;
    }

    public void setBank(String bank) {
        Bank = bank;
    }

    public String getBranch() {
        return Branch;
    }

    public void setBranch(String branch) {
        Branch = branch;
    }

    public String getBranchCode() {
        return BranchCode;
    }

    public void setBranchCode(String branchCode) {
        BranchCode = branchCode;
    }

    public String getAccountName() {
        return AccountName;
    }

    public void setAccountName(String accountName) {
        AccountName = accountName;
    }

   public CommissionStructure getCommissionStructure() {
        return commissionStructure;
    }

    public void setCommissionStructure(CommissionStructure commissionStructure) {
        this.commissionStructure = commissionStructure;
    }

    /*public String getCommissionId() {
        return CommissionId;
    }

    public void setCommissionId(String commissionId) {
        CommissionId = commissionId;
    }*/
}
