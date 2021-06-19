package com.mechanicservice.model;

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
    @OneToMany
    private List<Service> requiredServices;


    public Car(String brandName, Mechanic assignedMechanic, Customer owner, List<Service> requiredServices) {
        this.brandName = brandName;
        this.assignedMechanic = assignedMechanic;
        this.owner = owner;
        this.requiredServices = requiredServices;
    }
}
