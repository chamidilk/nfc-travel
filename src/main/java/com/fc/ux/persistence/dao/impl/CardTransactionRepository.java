package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.Card;
import com.fc.ux.persistence.model.Cardtransaction;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CardTransactionRepository extends CrudRepository<Cardtransaction, Integer> {
}
