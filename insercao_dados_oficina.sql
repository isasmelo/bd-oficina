-- inserindo dados oa bd oficina
use oficina;

-- inserindo valores tabela address
desc address;
INSERT INTO address (cep, StreetAndNumber, complement, district, city, state)
VALUES	(69152355, 'Rua Sucupira 29', null, 'Folreste', 'Parintins', 'AM'),
		(90880971,'Avenida Doutor Carlos Barbosa 314', null ,'Azenha', 'Porto Alegre', 'RS'),
		(87114360,'Rua Via Láctea 78', null, 'Jardim Universal', 'Sarandi', 'PR'),
		(68928349,'Rua Travessa Maracanã 23', 'do lado do petshop' ,'Centro', 'Santana', 'AP'),
		(69921124,'Rua Aroeira 756', null, 'Horizonte', 'Rio Branco', 'AC'),
		(65081755,'Rua da Estrela 444', null, 'Paraiso', 'São Luís', 'MA'),
		(84555842,'Rua Palmeiras 12', 'Casa', 'Botafogo', 'Rio de Janeiro', 'RJ'),
		(85622230, 'Avenida Limoeiros 435', null , 'Piratini', 'Sorocaba', 'SP'),
		(87114562, 'Rua Alameda Becker 9845', 'Prédio verde escuro', 'Boqueirão', 'Curitiba', 'PR');
select * from address;

-- inserindo valores tabela clients
desc clients;
insert into clients (idClientAddress, Fname, Lname, CPF, Bdate, contact, email)
values	(1, 'Roberto', 'Carlos',12345678901, '1951-08-20', 88225531, 'roberto@email.com' ),
		(2, 'Maria', 'Rosa', 09876543210, '1986-01-20', 94551422, 'maria@email.com' ),
		(3, 'Paulo', 'Cordeiro',13243546576, '1975-01-09', 94455321, 'paulo@email.com' ),
        (4, 'Maria','Silva',63376660100, '1965-01-09',  12346789, 'mariasilva@email.com' ),
		(5,'Matheus','Pimentel',8637555384, '1955-12-08', 987654321, 'matheusp@email.com' ),
		(6,'Ricardo','Silva',67311661859, '1941-06-20', 45678913, 'ricardo@email.com' ),
		(7,'Julia','França',66332433142, '1974-11-01', 789123456, 'julia@email.com' ),
		(8,'Roberta','Assis',28234806696, '1972-05-04', 98745631, 'roberta@email.com' ),
		(9,'Isabela','Cruz', 8234806696, '1980-07-22', 654789123, 'isabela@email.com');
select * from clients;
   
 -- inserindo valores tabela vehicle
 desc vehicle;
INSERT INTO vehicle (idClient, brand, model, yearofm, licensePlate, lastRevised)
VALUES
  (1, 'Toyota', 'Corolla', 2020, 'ABC4123', '2022-11-20'),
  (2, 'Honda', 'Civic', 2018, 'XYZ7789', null),
  (3, 'Ford', 'Focus', 2019, 'DEF4456', null),
  (4, 'Chevrolet', 'Cruze', 2022, 'GHI7789', '2023-05-17'),
  (5, 'Volkswagen', 'Golf', 2021, 'JKL6123', '2023-04-19'),
  (6, 'Hyundai', 'Elantra', 2017, 'MNO2456', null),
  (7, 'Nissan', 'Altima', 2016, 'PQR7789', null),
  (8, 'Kia', 'Optima', 2019, 'STU1423', '2023-01-10'),
  (9, 'Subaru', 'Impreza', 2020, 'VWX4856', null);
select * from vehicle; 

 -- inserindo valores tabela orçamento
 desc budget;
 INSERT INTO budget (idClient, idVehicle, authorization, Bvalue, Bdate)
VALUES	(1, 1, 'approved', 2000.00, '2023-08-17' ),
		(2, 2, 'disapproved', 4000.00, '2023-08-17' ),
        (3, 3, 'approved', 1500.00, '2023-08-17' ),
        (4, 4, 'disapproved', 2000.00, '2023-08-17' ),
        (5, 5, 'approved', 5000.00, '2023-08-17' ),
        (6, 6, 'approved', 2000.00, '2023-08-17' ),
        (7, 7, 'disapproved', 2000.00, '2023-08-17' ),
        (8, 8, 'approved', 2000.00, '2023-08-17' ),
        (9, 9, 'disapproved', 4000.00, '2023-08-17' );
select * from budget;

 -- inserindo valores tabela serviço
 desc service;
insert into service (idVehicle, idClient, sValue, sdescription, status_serviço) 
values	(1,1, 250.00, 'Serviço de substituição da bateria do veículo por uma nova, incluindo testes e descarte adequado da bateria antiga.', 'execução'),
		(3,3, 150.00, 'Serviço de análise do sistema eletrônico do veículo para identificar e solucionar problemas relacionados a sensores, módulos ou componentes eletrônicos.', 'execução'),
		(5,5, 300.00, 'Serviço de revisão completa do veículo, incluindo troca de óleo, inspeção de fluidos, verificação de freios, suspensão, direção e sistemas elétricos.', 'entrega'),
		(6,6, 250.00, 'Serviço de substituição da bateria do veículo por uma nova, incluindo testes e descarte adequado da bateria antiga.', 'execução'),
        (8,8, 250.00, 'Serviço de substituição da bateria do veículo por uma nova, incluindo testes e descarte adequado da bateria antiga.', 'entrega');
 select * from service;
 
  -- inserindo valores tabela funcionario
desc worker;
INSERT INTO worker (Fname, Lname, CPF, Bdate, Contact, Waddress)
VALUES
  ('Michael', 'Johnson', 12345678901,'1985-07-15',69152355, 'Rua Sucupira 29, Folreste'),
  ('Emily', 'Brown', 45612378945, '1980-05-01',90880971,'Avenida Doutor Carlos Barbosa 314, Azenha'),
  ('Daniel', 'Lee',12123456965,'1972-04-22',87114360,'Rua Via Láctea 78, Jardim Universal'),
  ('Olivia', 'Miller',32659855231,'1965-01-03',68928349,'Rua Travessa Maracanã 23, Centro'),
  ('James', 'Garcia',78945612310,'1978-03-19',69921124,'Rua Aroeira 756, Horizonte'),
  ('Rafael', 'Lopez',45698978900,'1975-01-09',65081755,'Rua da Estrela 444, Paraiso');
select * from worker;

  -- inserindo tabela peça
desc material;
INSERT INTO material (Mcode, Mname, quantity, Mvalue)
VALUES
  ('P1001', 'Oil Filter', '10', '5.99'),
  ('P1002', 'Air Filter', '8', '9.99'),
  ('P1003', 'Brake Pads', '5', '29.99'),
  ('P1004', 'Spark Plugs', '2', '3.49'),
  ('P1005', 'Battery', '1', '4.65');
  select * from material;

-- inserindo tabela relação funcionario serviço
desc serviceWorker;
INSERT INTO serviceWorker (idWorker, idService)
VALUES
  (7, 1),
  (8, 2),
  (8, 3),
  (9, 3),
  (9, 4),
  (10, 4),
  (11, 5),
  (12, 5);
select * from serviceworker;

-- inserindo tabela relação funcionario serviço
desc serviceMaterial;
INSERT INTO serviceMaterial (idService, idMaterial)
VALUES	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
        (5, 5);
select * from serviceMaterial;


