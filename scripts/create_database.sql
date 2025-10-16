create database ecommerce;
use ecommerce;

-- CLIENTS
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(50),
    Minit char(3),
    Lname varchar(50),
    CPF char(11) not null,
    Address varchar(100),
    constraint unique_cpf_cliente unique (CPF)
);

-- PRODUCT
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(100) not null,
    Classification_kids bool default false,
    Category enum('Eletrônicos','Roupas','Brinquedos','Alimentos','Móveis') not null,
    Avaliacao decimal(2,1) default 0.0,
    Size varchar(20)
);

-- ORDERS
create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    PaymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
);

-- PAYMENTS
create table payments(
	idPayment int auto_increment primary key,
    idPaymentOrder int,
    PaymentTypes enum('Boleto','Cartão','Dois cartões','Pix') default 'Pix',
    Holder varchar(45),
    CardNumber char(16),
    Validity char(6),
    limitAvailable float,
	constraint fk_payment_order foreign key (idPaymentOrder) references orders(idOrder)
);

-- PRODUCT STORAGE
create table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar(45),
    quantity int default 0
);

-- SUPPLIER
create table supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(45),
    CNPJ char(14) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

-- SELLER
create table seller(
	idSeller int auto_increment primary key,
    SocialName varchar(45),
    AbstName varchar(45),
    CNPJ char(14),
    CPF char(11),
    location varchar(45),
    contact char(11) not null,
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
);

-- PRODUCT ↔ SELLER
create table productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_productseller_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_productseller_product foreign key (idPproduct) references product(idProduct)
);

-- PRODUCT ↔ ORDER
create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível','Sem estoque') default 'Disponível',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_product foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_order foreign key (idPOorder) references orders(idOrder)
);

-- PRODUCT ↔ STORAGE LOCATION
create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(45) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storagelocation_product foreign key (idLproduct) references product(idProduct),
    constraint fk_storagelocation_storage foreign key (idLstorage) references productStorage(idProdStorage)
);

-- PRODUCT ↔ SUPPLIER
create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_productsupplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_productsupplier_product foreign key (idPsProduct) references product(idProduct)
);






