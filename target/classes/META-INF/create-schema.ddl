create sequence hibernate_sequence start 1 increment 1

    create table car (
       id int8 not null,
        brand_name varchar(255),
        fuel varchar(255),
        repairedstatus varchar(255),
        requiredservice varchar(255),
        primary key (id)
    )

    create table customer (
       id int8 not null,
        city varchar(255),
        email varchar(255),
        name varchar(255),
        phonenumber varchar(255),
        street varchar(255),
        ownedcar_id int8,
        user_id int8,
        primary key (id)
    )

    create table mechanic (
       id int8 not null,
        name varchar(255),
        picture varchar(255),
        specialization varchar(255),
        primary key (id)
    )

    create table service (
       id int8 not null,
        date timestamp,
        servicetype varchar(255),
        car_id int8,
        mechanic_id int8,
        primary key (id)
    )

    create table user_credentials (
       id int8 not null,
        password varchar(255),
        username varchar(255),
        primary key (id)
    )

    alter table if exists customer 
       add constraint FKmfjfudsedybibx28cmjhxtb4 
       foreign key (ownedcar_id) 
       references car

    alter table if exists customer 
       add constraint FK78pio25qdho8j6h0eqvy1fli2 
       foreign key (user_id) 
       references user_credentials

    alter table if exists service 
       add constraint FKnrrevpm4otovp3e6jvpmao4e1 
       foreign key (car_id) 
       references car

    alter table if exists service 
       add constraint FK8x8qehjum64psba3xtty9akt1 
       foreign key (mechanic_id) 
       references mechanic
