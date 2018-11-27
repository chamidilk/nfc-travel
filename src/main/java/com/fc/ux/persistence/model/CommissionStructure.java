package com.fc.ux.persistence.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import javax.persistence.Id;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by shanikah on 9/12/2018.
 */

@Entity
@Table(name = "commissionstructure")
public class CommissionStructure {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long CommissionId;

    private String Status;
    private String description;
    private Date AddedDate;

   @OneToMany(cascade = {CascadeType.ALL},fetch=FetchType.EAGER, mappedBy = "commissionStructure")
   @LazyCollection(LazyCollectionOption.FALSE)
    private Set<CommissionSettlementParty> settlementPartySet;


    public CommissionStructure(){
       if(this.getSettlementPartySet()==null){
          this.setSettlementPartySet(new HashSet<CommissionSettlementParty>());
       }
    }

   public void addSettlementParty(CommissionSettlementParty settlementParty){
        settlementParty.setCommissionStructure(this);
        this.getSettlementPartySet().add(settlementParty);
    }

    public Long getCommissionId() {
        return CommissionId;
    }

    public void setCommissionId(Long commissionId) {
        CommissionId = commissionId;
    }

    public Date getAddedDate() {
        return AddedDate;
    }

    public void setAddedDate(Date addedDate) {
        AddedDate = addedDate;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public Set<CommissionSettlementParty> getSettlementPartySet() {
        return settlementPartySet;
    }

    public void setSettlementPartySet(Set<CommissionSettlementParty> settlementPartySet) {
        this.settlementPartySet = settlementPartySet;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
