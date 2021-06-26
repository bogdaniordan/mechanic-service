package com.mechanicservice.repository;

import com.mechanicservice.model.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Long> {

    Optional<Service> getServiceByMechanicId(Long mechanic_id);
}
