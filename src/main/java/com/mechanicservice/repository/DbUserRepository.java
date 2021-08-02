package com.mechanicservice.repository;

import com.mechanicservice.model.DbUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DbUserRepository extends JpaRepository<DbUser, Long> {
    Optional<DbUser> findByUsername(String username);

    Optional<Integer> findIdByUsername(String username);
}
