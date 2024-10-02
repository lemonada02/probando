package org.springframework.samples.petclinic.card;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface CardRepository extends CrudRepository<Card, Integer>{
    @Query("Select c from Card c")
    public List<Card> findAll();

    @Query("Select c from Card c.id = :cardId")
    public Card findById(int cardId);
}
