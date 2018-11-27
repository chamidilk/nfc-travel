package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.FareDetail;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface FareDetailRepository extends CrudRepository<FareDetail, Long> {

    @Query("select f from FareDetail f WHERE f.fareRevision.Status='ACTIVE' and f.fareRevision.BusCategory='N' and f.fareRevision.ValidFrom< :currentDate and f.fareRevision.ValidTo> :currentDate")
    List<FareDetail> fareStructure(@Param(value = "currentDate") Date currentDate);
}
