package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.math.BigDecimal;

@Embeddable
@Getter
@Setter
public class LineItem {

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private BigDecimal amount;

    public LineItem() {
    }

    public LineItem(String description, BigDecimal amount) {
        this.description = description;
        this.amount = amount;
    }

    @ManyToOne
    private Invoice invoice;

    @Override
    public String toString() {
        return "LineItem{" +
                "description='" + description + '\'' +
                ", amount=" + amount +
                '}';
    }
}
