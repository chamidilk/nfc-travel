package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.Bus;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.fc.ux.persistence.model.Route;
import com.fc.ux.persistence.model.Device;
import com.fc.ux.persistence.model.RouteSection;

import java.util.List;


public interface RouteRepository extends CrudRepository<Route, Integer>{
   // List<Bus> findByBusRegistrationNumber(String busRegistrationNumber);

    @Query("select r from Route r where r.routeId = :routeId and r.status='ACTIVE'")
    Route ActiveRoute(@Param(value = "routeId") Integer routeId);

    Route findByRouteId(String deviceId);
}
