package com.fc.ux.persistence.model;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "role")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long roleId;

    private String roleName;

    private String status;

    @ManyToMany(mappedBy = "roles")
    private Collection<SystemUser> users;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "roleprivilege",
            joinColumns = @JoinColumn(name = "roleId", referencedColumnName = "roleId") ,
            inverseJoinColumns = @JoinColumn(name = "privilegeId", referencedColumnName = "privilegeId") )
    private Collection<Privilege> privileges;



    public Role() {
        super();
    }

    public Role(final String name) {
        super();
        this.roleName = name;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Collection<SystemUser> getUsers() {
        return users;
    }

    public void setUsers(Collection<SystemUser> users) {
        this.users = users;
    }

    public Collection<Privilege> getPrivileges() {
        return privileges;
    }

    public void setPrivileges(Collection<Privilege> privileges) {
        this.privileges = privileges;
    }

    /*@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((name == null) ? 0 : name.hashCode());
        return result;
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Role role = (Role) obj;
        if (!role.equals(role.name)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Role [name=").append(name).append("]").append("[id=").append(id).append("]");
        return builder.toString();
    }*/
}