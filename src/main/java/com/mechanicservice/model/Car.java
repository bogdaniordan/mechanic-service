package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

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
    @JoinColumn(name = "id")
    private Mechanic assignedMechanic;

//    @Column(name = "owner")
    @OneToOne
    private Customer owner;


    @Enumerated
    private RepairedStatus repairedstatus;

//    @Column(name = "required_service")
    @Column(name = "required_services")
    private ServiceType requiredServices;


    public Car(String brandName, Mechanic assignedMechanic, RepairedStatus repairedStatus, ServiceType requiredServices) {
        this.brandName = brandName;
        this.assignedMechanic = assignedMechanic;
        this.repairedstatus = repairedStatus;
//        this.owner = owner;
        this.requiredServices = requiredServices;
    }

    public void addOwner(Customer owner) {
        this.owner = owner;
    }
}
