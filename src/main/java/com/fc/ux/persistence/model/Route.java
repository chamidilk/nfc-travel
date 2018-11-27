package com.fc.ux.persistence.model;

// Generated Nov 23, 2015 7:03:48 PM by Hibernate Tools 3.4.0.CR1

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * TFuelCompany generated by hbm2java
 */
@Entity
@Table(name = "route")
public class Route {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int routeId;

	private String routeNo;
	private String routeName;
	private String startSectionName;
	private String endSectionName;
	private String status;

    @OneToMany(cascade = { CascadeType.ALL}, fetch = FetchType.EAGER, mappedBy = "route")
    @LazyCollection(LazyCollectionOption.FALSE)
    private Set<RouteSection> routeSectionsSet;

    public Set<RouteSection> getRouteSectionsSet() {
        return routeSectionsSet;
    }

    public void setRouteSectionsSet(Set<RouteSection> routeSectionsSet) {
        this.routeSectionsSet = routeSectionsSet;
    }


    public Route() {
        if (this.getRouteSectionsSet() == null) {
            this.setRouteSectionsSet(new HashSet<RouteSection>());
        }
    }

    public void addRouteSection(RouteSection routeSection) {
        routeSection.setRoute(this);
        this.getRouteSectionsSet().add(routeSection);
    }

    public String getRouteNo() {
        return routeNo;
    }

    public void setRouteNo(String routeNo) {
        this.routeNo = routeNo;
    }

    public String getRouteName() {
        return routeName;
    }

    public void setRouteName(String routeName) {
        this.routeName = routeName;
    }

    public String getStartSectionName() {
        return startSectionName;
    }

    public void setStartSectionName(String startSectionName) {
        this.startSectionName = startSectionName;
    }

    public String getEndSectionName() {
        return endSectionName;
    }

    public void setEndSectionName(String endSectionName) {
        this.endSectionName = endSectionName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getRouteId() {
        return routeId;
    }

    public void setRouteId(int routeId) {
        this.routeId = routeId;
    }
}
