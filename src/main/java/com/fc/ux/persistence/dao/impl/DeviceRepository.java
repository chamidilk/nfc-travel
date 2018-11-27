package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.Device;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

public interface DeviceRepository extends CrudRepository<Device, Long> {

    Device findByDeviceId(Long deviceID);
}
