-- criando banco de dados oficina
show databases;
create database if not exists oficina;
use oficina;
show tables;

-- Criar tabela endereco
create table address (
	idaddress int auto_increment primary key,
    CEP char(8) not null,
    StreetAndNumber varchar(255) not null,
    complement varchar(45),
    district varchar(45) not null,
    city varchar(45) not null,
    state char(2) not null,
    constraint unique_cep unique (CEP)
);

-- Criar tabela cliente
create table clients (
	idClient int auto_increment primary key,
	IdClientAddress int,
    FName varchar(20) not null,
    LName varchar(30) not null,
    CPF char(11),
    Bdate date not null,
    Contact varchar(25) not null,
    email varchar(100),
    constraint unique_cpf_client unique (CPF),
    constraint fk_address_client foreign key (IdClientAddress) references address(IdAddress)
);

-- Criar tabela veiculo
create table vehicle (
	idVehicle int auto_increment primary key,
	idClient int,
    brand varchar(30) not null,
    model varchar(30) not null,
    category enum('Carro', 'Moto', 'Caminhão', 'Van') not null,
    yearofm int not null,
    licensePlate char(7) not null,
	lastRevised date,
    constraint unique_licensePlate unique (licensePlate),
    constraint fk_vehicle_client foreign key(idClient) references clients (idClient)
		on update cascade
);

-- Criar tabela orçamento
create table budget(
	idbudget int auto_increment primary key,
    idClient int,
    idVehicle int,
    authorization enum('disapproved', 'approved') default 'disapproved',
    Bvalue float not null,
    Bdate date not null,
	constraint fk_budget_vehicle foreign key (IdVehicle) references vehicle (IdVehicle),
    constraint fk_budget_client foreign key(idClient) references clients (idClient)
			on update cascade
);

-- Criar tabela serviço
 create table service(
	idService int auto_increment,
    idVehicle int,
    idClient int,
    Svalue decimal(10,2) default 0.00,
    sdescription varchar(250),
    status_serviço enum('avaliação', 'autorização', 'pagamento', 'execução', 'entrega'),
	constraint pk_service primary key (idService),
    constraint fk_service_vehicle foreign key (idVehicle) references vehicle (idVehicle),
    constraint fk_service_vehicle_client foreign key (idClient) references clients (idClient)
 );
 
 
  -- criando tabela funcionario
create table worker(
	idworker int auto_increment ,
    FName varchar(20) not null,
    LName varchar(30) not null,
    CPF char(11),
    Bdate date not null,
    Contact varchar(25) not null,
    Waddress varchar(250) not null,
    constraint pk_fworker primary key(idworker),
    constraint unique_worker_CPF unique (CPF) 
);


-- criando tabela peças
create table material(
	idMaterial int auto_increment,
    Mcode varchar(9),
    Mname varchar(45),
    quantity varchar(6),
    Mvalue decimal(10,2) default 0.00,
    constraint pk_material primary key (idMaterial),
    constraint unique_material_code unique(Mcode)
);

-- tabelas de relacionamento

-- criando tabela  relacionamento funcionario serviço
create table serviceWorker(
	idWorker int,
    idService int,
    constraint pk_serviceWorker_fworker foreign key (idWorker) references worker (idWorker),
    constraint pk_serviceWorker_service foreign key (idService) references service (idService)
);


-- criando tabela  relacionamento péças serviço
create table serviceMaterial(
	idService int,
    idMaterial int,
    constraint pk_serviceMaterial_service foreign key (idService) references service (idService),
    constraint pk_erviceMaterial_material foreign key (idMaterial) references material (idMaterial)
);

