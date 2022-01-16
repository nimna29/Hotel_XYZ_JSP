package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.ArrayList;
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

    @ElementCollection
    @OrderColumn
    @CollectionTable(
            name="LineItem",
            joinColumns=@JoinColumn(name="invoice_id")
    )
    private List<LineItem> items;

    @Column(nullable = false)
    private BigDecimal total = BigDecimal.ZERO;

    private String status;

    public void addLine(String description, BigDecimal amount)
    {
        if (items == null)
        {
            items = new ArrayList<>();
        }

        items.add(new LineItem(description, amount));
        this.total = this.total.add(amount);
    }

    @Override
    public String toString() {
        return "Invoice{" +
                "id=" + id +
                ", items=" + items +
                ", total=" + total +
                ", status='" + status + '\'' +
                '}';
    }
}