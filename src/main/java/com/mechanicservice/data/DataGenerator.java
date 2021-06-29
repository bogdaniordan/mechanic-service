package com.mechanicservice.data;

import com.mechanicservice.model.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
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
        Service service = new Service(ServiceType.ENGINE_REPAIR, new Date());
        service.assignCar(car);
        mechanic.addPicture("frontend/src/components/resources/sergei.jpg");
        service.assignMechanic(mechanic);
        User user = new User("bogdan", "1234");
        customer.assignCredentials(user);
//        car.assignMechanic(mechanic);


        entityManager.persist(user);
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
