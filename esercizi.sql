--prima riga
--1
create database pizzeria_da_luigi;

--2
create table ordine (
	id  int NOT NULL,
	nome_pizza   varchar(30),
	nome_cliente   varchar(30),
	data_ordine   timestamp,
	totale_ordine   decimal(10,2)
);

--3
INSERT INTO ordine
VALUES
(0,'Margherita','Mario Rossi','15/01/2022 20:10', 3.50),
(1,'Capricciosa','Giacomo Verdi','16/01/2022 20:20', 4.50),
(2,'TipoPizza','NomeCognome','17/01/2022 21:05', 3.20),
(3,'Tartufo','Marta Gialli','17/01/2022 21:10', 3.50),
(4,'Pomodoro','Giorgio Blu','18/01/2022 21:30', 4.50),
(5,'Bianca','Franco Arancio','19/01/2022 21:50', 3.50),
(6,'Margherita','Fabio Rosa','20/01/2022 22:10', 4.50),
(7,'Margherita','Mario Rossi','20/01/2022 22:30', 3.50),
(8,'Margherita','Giacomo Verdi','20/01/2022 22:50', 4.50),
(9,'Capricciosa','Mario Rossi','20/01/2022 20:15', 3.50),
(10,'Tartufo','Antonio Grigio','21/01/2022 20:25', 4.50),
(11,'Bianca','Mario Rossi','21/01/2022 21:40', 3.50),
(12,'ProvaPizza','ProvaCliente','21/01/2022 21:40', 7.50);

--4
select * from ordine;

--5
select id, totale_ordine, data_ordine from ordine;

--6
select distinct nome_cliente from ordine;

--7
select nome_pizza from ordine where nome_cliente='Mario Rossi';

--8
select nome_pizza from ordine where data_ordine between '21/01/2022 00:00:00' and '21/01/2022 23:59:59';
select nome_pizza from ordine where date(data_ordine)='21/01/2022';

--9
select * from ordine where nome_pizza='Margherita' and nome_cliente='Mario Rossi';

--10
select count(*) from ordine;

--11
select * from ordine where data_ordine between '20/01/2022 00:00:00' and '20/01/2022 23:59:59';
select * from ordine where date(data_ordine)='20/01/2022';

--12
select * from ordine where nome_pizza IN ('Margherita', 'Capricciosa', 'Bianca');

--13
select sum(totale_ordine) from ordine;

--14
select sum(totale_ordine) from ordine where data_ordine between '17/01/2022 00:00:00' and '17/01/2022 23:59:59';
select sum(totale_ordine) from ordine where date(data_ordine)='17/01/2022';

--15
select avg(totale_ordine) from ordine;

--16
select max(totale_ordine), nome_cliente from ordine group by nome_cliente;

--17
--sarebbe una distinct ma va visto come gestire il timestamp tra data e orario
select distinct date(data_ordine) from ordine;

--18
select * from ordine where totale_ordine between 6 and 8;

--19
select * from ordine order by data_ordine desc limit 5;