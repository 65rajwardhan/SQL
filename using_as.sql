select amount as rental_price
from payment;

select sum(amount) as net_revinue
from payment;

select count(amount) as num_transactions
from payment

select count(*) num_transactions
from payment

select customer_id,sum(amount)
from payment
group by customer_id

select customer_id,sum(amount) as total_spent
from payment
group by customer_id

select customer_id,sum(amount) as total_spent
from payment
group by customer_id
having sum(amount)>100

select customer_id,amount
from payment
where amount>2

