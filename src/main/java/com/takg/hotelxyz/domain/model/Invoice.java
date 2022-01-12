package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Getter
@Setter
public class Invoice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "invoice_id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "reservation_id", nullable = false)
    private Reservation reservation;

    @OneToMany(mappedBy = "invoice")
    private List<Transaction> transactions;

    private String description;

    private BigDecimal amount;
    private String status;

    @Override
    public String toString() {
        return "Invoice{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", amount=" + amount +
                ", status='" + status + '\'' +
                '}';
    }
}
