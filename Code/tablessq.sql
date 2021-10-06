create table card_holder( id serial Primary Key Not Null, fame varchar(63));

create table credit_card(card varchar(20) primary key NOT NULL, card_holder_id int references card_holder(id) );

create table merchant(id serial Primary Key, id_merchant_category int);

create table merch_category(id int references merchant(merch_id), name varchar(127));

create table transactions(id serial primary key not null, date timestamp, amount float, card varchar(20) references credit_card(card), id_merchant int references merchant(id));

--drop table  credit_card

select * from transactions

alter table transactions rename to transaction