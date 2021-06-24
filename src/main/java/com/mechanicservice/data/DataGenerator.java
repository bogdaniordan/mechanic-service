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
        Mechanic mechanic =  new Mechanic("Nea Mihai", ServiceType.ENGINE_REPAIR);
        Mechanic mechanic1 =  new Mechanic("Nea Bebe", ServiceType.ENGINE_REPAIR);
        Mechanic mechanic2 =  new Mechanic("Nea Mircea", ServiceType.OIL_CHANGE);
        Mechanic mechanic3 =  new Mechanic("Nea Dani", ServiceType.BUMPER_REPLACEMENT);
        Car car = new Car("dacia", RepairedStatus.BROKEN, ServiceType.ENGINE_REPAIR, FuelType.DIESEL);
        car.assignMechanic(mechanic);
        Customer customer = new Customer("gin");
        customer.assignCar(car);
        Service service = new Service(ServiceType.ENGINE_REPAIR, car, customer, mechanic, new Date());
        Credentials credentials = new Credentials("bogdan", "1234");
        customer.assignCredentials(credentials);
//        car.assignMechanic(mechanic);


        entityManager.persist(credentials);
        entityManager.persist(mechanic);
        entityManager.persist(car);
        entityManager.persist(customer);
        entityManager.persist(service);
        entityManager.persist(mechanic1);
        entityManager.persist(mechanic2);
        entityManager.persist(mechanic3);

        transaction.commit();
    }


}
