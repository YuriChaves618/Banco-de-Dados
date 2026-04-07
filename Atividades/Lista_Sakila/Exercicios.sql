use sakila;

select * from customer;

select customer.first_name as Nome, customer.last_name as Sobrenome from customer;

select * from film;

select film.length as Duracao from film where length > 120;

select film.release_year as Ano_Lancamento, film.title as Nome from film where release_year = 2006;

select * from customer;

select customer.first_name as Nome ,customer.last_name as Sobrenome ,customer.active as Ativo from customer where active = 1;

select * from rental;

select customer.first_name as Nome, customer.last_name as Sobrenome, rental_id as ID_Aluguel from customer inner join rental where customer.customer_id = rental.customer_id;

select * from payment;

select customer.first_name as Nome, customer.last_name as Sobrenome, payment.amount as Valor_Pago from customer inner join payment where customer.customer_id = payment.payment_id;

select * from inventory;

select customer.first_name as Nome, customer.last_name as Sobrenome, film.title as Nome_Filme
from customer inner join inventory inner join rental inner join film where inventory.inventory_id = rental.inventory_id;

select * from store;
select * from staff;

SELECT staff.first_name as Nome, staff.last_name as Sobrenome, store.store_id as ID_Lojas from staff inner join store where store.store_id = staff.staff_id;

select * from film_category;
select * from category;

select film.title as Nome_Filme,  category.name as Categoria 
from film inner join film_category on film.film_id = film_category.film_id 
inner join category on film_category.category_id = category.category_id
group by film.title, category.name;

select count(*) as Total_Clientes from customer;

select * from payment;

select sum(payment.amount) as Total_Pagamentos from payment;

select avg(payment.amount) as Media_Pagamentos from payment;
