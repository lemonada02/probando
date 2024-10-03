package org.springframework.samples.petclinic.card;

import org.springframework.samples.petclinic.model.BaseEntity;

import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Card extends BaseEntity{
    
    private String design;
}
