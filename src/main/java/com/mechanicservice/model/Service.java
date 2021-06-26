package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity(name = "service")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Enumerated(EnumType.STRING)
    private ServiceType servicetype;

    @OneToOne
    private Car car;

    @OneToOne
    private Customer customer;

    @OneToOne
    private Mechanic mechanic;

    @Column(name = "date")
    private Date date;


    public Service(ServiceType serviceType, Car car, Customer customer, Mechanic mechanic, Date date) {
        this.servicetype = serviceType;
        this.car = car;
        this.customer = customer;
        this.mechanic = mechanic;
        this.date = date;
    }
}
