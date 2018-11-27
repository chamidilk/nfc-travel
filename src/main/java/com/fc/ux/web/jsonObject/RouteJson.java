package com.fc.ux.web.jsonObject;

import com.fc.ux.persistence.model.Route;
import com.fc.ux.persistence.model.RouteSection;

import java.util.List;

public class RouteJson {

    private Route route;

    private List<RouteSection> routeSection;

    public Route getRoute() {
        return route;
    }

    public void setRoute(Route route) {
        this.route = route;
    }

    public List<RouteSection> getRouteSection() {
        return routeSection;
    }

    public void setRouteSection(List<RouteSection> routeSection) {
        this.routeSection = routeSection;
    }
}
