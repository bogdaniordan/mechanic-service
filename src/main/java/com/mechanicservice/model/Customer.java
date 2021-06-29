package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity(name = "customer")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @OneToOne
    @JoinColumn(name = "ownedcar_id")
    private Car ownedCar;

    @OneToOne
    private User user;

    public Customer(String name) {
        this.name = name;
    }

    public void assignCar(Car ownedCar) {
        this.ownedCar = ownedCar;
    }

    public void assignCredentials(User user) {
        this.user = user;
    }
}
