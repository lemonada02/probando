package org.springframework.samples.petclinic.card;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardService {
    
    private final CardRepository cardRepository;

    @Autowired
    public CardService(CardRepository cardRepository) {
        this.cardRepository = cardRepository;
    }

    public List<Card> findAllCards() {
        return cardRepository.findAll();
    }

    public Card findCardById(int cardId) {
        return cardRepository.findById(cardId);
    }

    public void saveCard(Card card) {
        cardRepository.save(card);
    }
}
