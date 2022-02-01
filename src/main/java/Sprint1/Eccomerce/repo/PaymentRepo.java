package Sprint1.Eccomerce.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import Sprint1.Eccomerce.Entity.Payment;


public interface PaymentRepo extends JpaRepository <Payment, Integer>{

	List<Payment> findAll();
}

