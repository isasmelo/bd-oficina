-- Queries / consultas bd oficina

select * from clients;

select * from service;

select * from vehicle;

select * from vehicle where brand = 'Nissan';

select * from budget where authorization = 'approved';

select concat(Fname, ' ', Lname) as NomeCompleto from clients;

SELECT idClient, COUNT(DISTINCT idService) AS total_services, SUM(Svalue) AS total_expenses
FROM service
GROUP BY idClient;


select * from vehicle order by yearofm desc;

-- veiculos e respectivos clientes
select v.*, concat(c.Fname, ' ', c.Lname) as nomecliente
from vehicle v
join clients c on v.idclient = c.idclient
order by nomecliente asc;


select * from service having svalue > 200.00;

SELECT concat(w.Fname ,' ', w.Lname) AS funcionario_nome, v.brand AS marca_carro, v.model AS modelo_carro
FROM worker w
INNER JOIN serviceworker sw ON w.idworker = sw.idworker
INNER JOIN service s ON sw.idService = s.idService
INNER JOIN vehicle v ON s.idVehicle = v.idVehicle;

select v.category, avg(s.svalue) as media_valor
from vehicle v
join service s on v.idvehicle = s.idvehicle
where s.status_serviço = 'Entrega'
group by v.category;


-- quantidade de veiculos por funcionario
select * from service;
select * from serviceworker;
select w.Fname, count(sw.idservice) as quantidade_veiculos
from worker w
inner join serviceworker sw on sw.idworker = w.idworker
inner join service s on  sw.idservice = s.idService
group by w.idworker;
