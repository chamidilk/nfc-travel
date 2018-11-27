package com.fc.ux.persistence.dao.impl;


import com.fc.ux.persistence.model.Bus;
import com.fc.ux.persistence.model.BusDevice;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BusDeviceRepository extends CrudRepository<BusDevice, Long> {





    List<BusDevice> findByDeviceId(Long deviceId);


    @Query("select b from BusDevice b where b.deviceId = :deviceId and status = 'ACT'")
    List<BusDevice> activeBusDevices(@Param(value = "deviceId")Long deviceId);
}
