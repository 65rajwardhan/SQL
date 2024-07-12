select * from customer

select * from address
inner join customer
on address.address_id=customer.address_id



select * from address
inner join customer
on address.address_id=customer.address_id
where district='california'

select district,email from address
inner join customer 
on address.address_id=customer.address_id
where district='california'

---Q.
	
select * from film
select * from actor
inner join film_actor


select * from actor
inner join film_actor
on actor.actor_id=film_actor.actor_id

select * from actor
inner join film_actor
on actor.actor_id=film_actor.actor_id
inner join film
on film_actor.film_id=film.film_id

select title,first_name,last_name from actor
inner join film_actor
on actor.actor_id=film_actor.actor_id
inner join film
on film_actor.film_id=film.film_id
where first_name='Nick' and
last_name='Wahlberg'



