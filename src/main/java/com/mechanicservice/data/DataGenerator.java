package com.mechanicservice.data;

import com.mechanicservice.model.Mechanic;
import com.mechanicservice.model.ServiceType;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class DataGenerator {

    private final EntityManager entityManager;

    public DataGenerator(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public void populateDb() {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

//        Mechanic mechanic = new Mechanic("Gica", ServiceType.BUMPER_REPLACEMENT)

        transaction.commit();
    }


}
