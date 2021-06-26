create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        assignedMechanic_id int8,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        owner_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FK4qhp3qimbv6yg9dw12uva4p3r 
       foreign key (assignedMechanic_id) 
       references mechanic

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKowdb81tp6v8q1pp15o18vbomy 
       foreign key (owner_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        owner_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKowdb81tp6v8q1pp15o18vbomy 
       foreign key (owner_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedCar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKd8u22urua8ckpc7u29kb88y8r 
       foreign key (ownedCar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType int4,
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedStatus varchar(255),
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        owner_id int8,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKpi80i2p6gvakat9x5b9d18d19 
       foreign key (owner_id) 
       references customer

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus int4,
        required_services int4,
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        credentials_id int8,
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists car 
       add constraint FKd7gapn42sy9rgbyqxx9h516su 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table mechanic_car (
       mechanic_id int8 not null,
        assignedCars_id int8 not null
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists mechanic_car 
       add constraint UK_e20l2mgkjr6mwecpxd5jaa943 unique (assignedCars_id)

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKjjqmts1yvdn0aoy26d1om00mn 
       foreign key (assignedCars_id) 
       references car

    alter table if exists mechanic_car 
       add constraint FKwt8biml4b093wlcc36i91x 
       foreign key (mechanic_id) 
       references mechanic

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization int4,
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        name varchar(255),
        credentials_id int8,
        ownedcar_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        serviceType varchar(255),
        car_id int8,
        customer_id int8,
        mechanic_id int8,
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmxm5tor4axxjlbhquh4hcu7qm 
       foreign key (credentials_id) 
       references credentials

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FKtyjijsa87ahcfvy495nhugo1 
       foreign key (customer_id) 
       references customer

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
