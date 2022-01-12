package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.Invoice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InvoiceRepository extends JpaRepository<Invoice, Long> {
}
