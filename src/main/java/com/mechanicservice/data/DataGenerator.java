package com.mechanicservice.data;

import com.mechanicservice.model.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.Arrays;
import java.util.Date;

public class DataGenerator {

    private final EntityManager entityManager;

    public DataGenerator(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public void populateDb() {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        Mechanic mechanic =  new Mechanic("gip", ServiceType.ENGINE_REPAIR);
        Car car = new Car("dacia", mechanic, RepairedStatus.BROKEN, ServiceType.ENGINE_REPAIR);
        Customer customer = new Customer("gin",
                car);
        Service service = new Service(ServiceType.ENGINE_REPAIR, car, customer, mechanic, new Date());
        car.addOwner(customer);
        mechanic.assignCar(car);
        entityManager.persist(car);
        entityManager.persist(customer);
        entityManager.persist(mechanic);
        entityManager.persist(service);
//        Mechanic mechanic = new Mechanic("Gica", ServiceType.BUMPER_REPLACEMENT)

        transaction.commit();
    }


}
