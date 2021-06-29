package com.mechanicservice.repository;

import com.mechanicservice.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CredentialsRepository extends JpaRepository<User, Long> {
}
