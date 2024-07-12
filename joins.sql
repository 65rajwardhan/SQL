---inner join
select * from tableA
inner join tableB
on tableA.col_match=TableB.col_match


select payment_id,payment.customer_id,first_name from payment
inner join customer
on payment.customer_id=customer.customer_id

select payment_id,payment.customer_id,first_name from customer
inner join payment
on payment.customer_id=customer.customer_id

---outer join
select * from tableA
full outer join tableB
on tableA.col_match=TableB.col_match

--to avoid null values
select * from tableA
full outer join tableB
on tableA.col_match=TableB.col_match
where tableA.id is null ortableB.id is null

select * from customer
full outer join payment
on customer.customer_id=payment.customer_id

---left outer join
select * from tableA
left outer join tableB
on tableA.col_match=TableB.col_match

select * from customer
left outer join payment
on customer.customer_id=payment.customer_id

select * from film

select * from inventory

---left join
	
select film.film_id,title,inventory_id
from film 
left join inventory on
inventory.film_id=film.film_id

select film.film_id,title,inventory_id,store_id
from film 
left join inventory on
inventory.film_id=film.film_id

select film.film_id,title,inventory_id,store_id
from film 
left join inventory on
inventory.film_id=film.film_id
where inventory.film_id is null


---right join

select * from tableA
right outer join tableB
on tableA.col_match=TableB.col_match
where tableA.id is null

select film.film_id,title,inventory_id,store_id
from film 
right join inventory on
inventory.film_id=film.film_id

select film.film_id,title,inventory_id,store_id
from film 
right join inventory on
inventory.film_id=film.film_id
where inventory.film_id is null

