package com.fc.ux.persistence.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "systemuser")
public class SystemUser {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long systemUserId;

    private String status;

    private Long platformUserId;

    private String systemUserName;

    @ManyToMany
    @LazyCollection(LazyCollectionOption.FALSE)
    @JoinTable(name = "systemuserrole",
            joinColumns = @JoinColumn(name = "systemUserid", referencedColumnName = "systemUserid") ,
            inverseJoinColumns = @JoinColumn(name = "roleid", referencedColumnName = "roleid") )
    private Collection<Role> roles;

    public Long getSystemUserId() {
        return systemUserId;
    }

    public void setSystemUserId(Long systemUserId) {
        this.systemUserId = systemUserId;
    }

    public String getSystemUserName() {
        return systemUserName;
    }

    public void setSystemUserName(String systemUserName) {
        this.systemUserName = systemUserName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getPlatformUserId() {
        return platformUserId;
    }

    public void setPlatformUserId(Long platformUserId) {
        this.platformUserId = platformUserId;
    }

    public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }

   /* @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("User [firstName=").append(firstName).append("]").append("[lastName=").append(lastName).append("]").append("[username").append(email).append("]");
        return builder.toString();
    }*/


}