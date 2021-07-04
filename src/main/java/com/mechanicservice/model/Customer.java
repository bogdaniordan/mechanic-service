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

    @Column(name = "email")
    private String email;

    @Column(name = "phonenumber")
    private String phoneNumber;

    @Column(name = "street")
    private String street;

    @Column(name = "city")
    private String city;

    public Customer(String name, String email, String phoneNumber, String street, String city) {
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.street = street;
        this.city = city;
    }

//    public Customer(String name) {
//        this.name = name;
//    }

    public void assignCar(Car ownedCar) {
        this.ownedCar = ownedCar;
    }

    public void assignCredentials(User user) {
        this.user = user;
    }
}
