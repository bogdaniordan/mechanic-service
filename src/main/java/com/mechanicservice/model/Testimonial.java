package com.mechanicservice.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity(name = "testimonial")
@Data
@NoArgsConstructor
public class Testimonial {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Enumerated(EnumType.STRING)
    private Rating rating;

    @Column(name = "comment")
    private String comment;

    @ManyToOne
    private Car car;

    @Column(name = "receivedservice")
    private ServiceType serviceType;

    @ManyToOne
    private Mechanic mechanic;

    @ManyToOne
    private Customer customer;

    public Testimonial(Rating rating, String comment, ServiceType serviceType) {
        this.rating = rating;
        this.comment = comment;
        this.serviceType = serviceType;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public Mechanic getMechanic() {
        return mechanic;
    }

    public void setMechanic(Mechanic mechanic) {
        this.mechanic = mechanic;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
