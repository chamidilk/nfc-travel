package com.fc.ux.persistence.dao.impl;


import com.fc.ux.persistence.model.Bus;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusRepository extends CrudRepository<Bus, Long> {


    @Query("select b from Bus b where b.busRegistrationNumber = :busRegistrationNumber")
    List<Bus> customerBusQuery(@Param(value = "busRegistrationNumber") String busRegistrationNumber);



    List<Bus> findByBusRegistrationNumber(String busRegistrationNumber);
}
