package com.mechanicservice.data;

import com.mechanicservice.model.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.Date;

public class DataGenerator {

//    private final EntityManager entityManager;
//
//    public DataGenerator(EntityManager entityManager) {
//        this.entityManager = entityManager;
//    }
//
//    public void populateDb() {
//        EntityTransaction transaction = entityManager.getTransaction();
//        transaction.begin();
//        Mechanic mechanic =  new Mechanic("Nea Marin", ServiceType.ENGINE_REPAIR);
//        Mechanic mechanic1 =  new Mechanic("Nea Bebe", ServiceType.ENGINE_REPAIR);
//        Mechanic mechanic2 =  new Mechanic("Nea Mircea", ServiceType.OIL_CHANGE);
//        Mechanic mechanic3 =  new Mechanic("Nea Dani", ServiceType.BUMPER_REPLACEMENT);
//        Car car = new Car("dacia", RepairedStatus.BROKEN, ServiceType.ENGINE_REPAIR, FuelType.DIESEL);
//        car.setAssignedMechanic(mechanic);
//        Customer customer = new Customer("Bodgan Iordan", "bogdan.iordan@yahoo.com", "0224342325", "Plutasilor", "Bucale", "https://asport.ro/wp-content/uploads/2021/01/gigi-becali.jpg");
//        Customer otherCustomer = new Customer("Gigi Becali", "becali@gmail","928329", "Antareestrat", "4343", "https://asport.ro/wp-content/uploads/2021/01/gigi-becali.jpg");
//        customer.setOwnedCar(car);
//        CarService carService = new CarService(ServiceType.ENGINE_REPAIR, new Date());
//        carService.assignCar(car);
//        mechanic.addPicture("https://thumbor.unica.ro/unsafe/980x600/smart/filters:contrast(1):quality(80)/https://tvmania.ro/wp-content/uploads/2020/12/Nea-Marin-1.jpg");
//        mechanic1.addPicture("https://agrointel.ro/wp-content/uploads/2016/07/Adrian-Porumboiu-a-vandut-Comcereal.jpg");
//        carService.assignMechanic(mechanic);
//        User user = new User("bogdan", "1234");
//        User otherUser = new User("becali", "steaua");
//        customer.setUser(user);
//        otherCustomer.setUser(otherUser);
//        Testimonial testimonial = new Testimonial(Rating.VERY_SATISFIED, "Nu bate nu troncane sa moaara mama", ServiceType.OIL_CHANGE);
//        Testimonial testimonial1 = new Testimonial(Rating.BAD, "A spart toba sa moara bibi", ServiceType.BUMPER_REPLACEMENT);
//
//        testimonial1.setCar(car);
//        testimonial1.setCustomer(customer);
//        testimonial1.setMechanic(mechanic3);
//
//        testimonial.setCar(car);
//        testimonial.setCustomer(customer);
//        testimonial.setMechanic(mechanic3);
//
//        entityManager.persist(testimonial1);
//        entityManager.persist(testimonial);
//        entityManager.persist(user);
//        entityManager.persist(otherUser);
//        entityManager.persist(mechanic);
//        entityManager.persist(car);
//        entityManager.persist(customer);
//        entityManager.persist(otherCustomer);
//        entityManager.persist(carService);
//        entityManager.persist(mechanic1);
//        entityManager.persist(mechanic2);
//        entityManager.persist(mechanic3);
//
//        transaction.commit();
//    }


}
