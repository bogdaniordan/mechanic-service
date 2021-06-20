package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.minidev.json.annotate.JsonIgnore;

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

////    @Column(name = "owner")
//    @OneToOne
//    @JsonIgnore
//    private Customer owner;


    @Enumerated(EnumType.STRING)
    private RepairedStatus repairedstatus;

//    @Column(name = "required_service")
//    @Column(name = "required_services")
    @Enumerated(EnumType.STRING)
    private ServiceType requiredservice;


    public Car(String brandName, RepairedStatus repairedStatus, ServiceType requiredServices) {
        this.brandName = brandName;
//        this.assignedMechanic = assignedMechanic;
        this.repairedstatus = repairedStatus;
//        this.owner = owner;
        this.requiredservice = requiredServices;
    }

    public void assignMechanic(Mechanic mechanic) {
        this.assignedMechanic = mechanic;
    }


//    public void addOwner(Customer owner) {
//        this.owner = owner;
//    }
}
