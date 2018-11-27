package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.Route;
import com.fc.ux.persistence.model.RouteSection;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RouteSectionRepository extends CrudRepository<RouteSection, Integer> {

    List<RouteSection> findByroute(Route id);

    @Query("select b from RouteSection b where b.route = :route")
    List<RouteSection> customerRouteSection(@Param(value = "route") Route route);


}
