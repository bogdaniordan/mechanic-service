package com.mechanicservice.model;

import jdk.jfr.Frequency;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity(name = "car")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "brand_name")
    private String brandName;

    @OneToOne
    private Mechanic assignedMechanic;

//    @Column(name = "owner")
    @OneToOne
    private Customer owner;

//    @Column(name = "repaired_status")
    @Enumerated(EnumType.STRING)
    private RepairedStatus repairedStatus;

//    @Column(name = "required_service")
    @Column(name = "required_services")
    private ServiceType requiredServices;


    public Car(String brandName, Mechanic assignedMechanic, RepairedStatus repairedStatus, ServiceType requiredServices) {
        this.brandName = brandName;
        this.assignedMechanic = assignedMechanic;
        this.repairedStatus = repairedStatus;
//        this.owner = owner;
        this.requiredServices = requiredServices;
    }

    public void addOwner(Customer owner) {
        this.owner = owner;
    }
}
