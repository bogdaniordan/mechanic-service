package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity(name = "mechanic")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Mechanic {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "specialization")
    private ServiceType specialization;

    @OneToMany
    private List<Car> assignedCars;


    public Mechanic(String name, ServiceType serviceType, List<Car> assignedCars) {
        this.name = name;
        this.specialization = serviceType;
        this.assignedCars = assignedCars;
    }
}
