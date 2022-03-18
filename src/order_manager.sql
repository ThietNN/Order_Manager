CREATE TABLE purchase_order
(
    id                int          NOT NULL,
    unit_name         varchar(30)  NOT NULL  PRIMARY KEY ,
    address           varchar(250) NOT NULL,
    phone             int          NOT NULL UNIQUE,
    order_date        DATE,
    product           varchar(250),
    order_description varchar(500),
    calculation_unit  varchar(20)  DEFAULT 'piece',
    quantity          int,
    CHECK ( quantity >= 0 ),
    client_name       varchar(30)
);
CREATE TABLE delivery_note
(
    id               int         not null,
    unit_name        varchar(30),
    FOREIGN KEY (unit_name) references purchase_order (unit_name),
    address          varchar(250) not null,
    delivery_date    date,
    product          varchar(250),
    calculation_unit varchar(20) default 'piece',
    quantity         int,
    check ( quantity >= 0 ),
    unit_price       int         not null,
    amount           int,
    receiver_name    varchar(30) not null,
    sender_name      varchar(30) not null
);












