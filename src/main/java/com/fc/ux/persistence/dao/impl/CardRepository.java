package com.fc.ux.persistence.dao.impl;

import com.fc.ux.persistence.model.Card;
import com.fc.ux.persistence.model.Device;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CardRepository extends CrudRepository<Card, Long> {

    List<Card> findByCardNumber(String cardNumber);
}
