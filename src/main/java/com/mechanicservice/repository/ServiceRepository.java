package com.mechanicservice.repository;

import com.mechanicservice.model.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Long> {

    Optional<Service> getServiceByMechanicId(Long mechanic_id);

    Optional<List<Service>> getServicesByMechanic_Id(Long mechanic_id);

    Optional<List<Service>> getServicesByCustomerId(Long customer_id);
}
