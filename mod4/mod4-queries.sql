select * from customer;
select * from orders;

-- alias
select name,  creditlimit as 'Credit Limit'
from customer ;

select c.name as 'customer name',
date_format(o.date, "%M %d %Y") as  'ord date',
concat('$', o.total) as 'ord tot'
from orders o, customer c where c.id = o.customerID
order by c.name;


select sum(total) from orders;

select customerID, sum(total)
 from orders ;
 
 select a.name, sum(total) from orders b , customer a
 where b.customerId = a.id;
 
 select customerid, sum(total)
 from orders
 group by customerId;
 
 select customerid, name, sum(total)
 from orders o, customer c
 where o.customerid = c.id
 group by name;
 
 select * from orders;
 select max(total) from orders;
 select min(total) from orders;
 
 Insert into customer (name, city, state, isCorpAcct, creditLimit)
values ('moon INC', 'middletown', 'OH', 1, 1000000);

select * from customer;

insert into customer values (999,'test','middletown','OH',0,100, 1) ;
 
 Insert into customer (name, city, state, isCorpAcct, creditLimit)
values ('a INC', 'middletown', 'OH', 1, 1000000),
('b INC', 'middletown', 'OH', 1, 1000),
('c INC', 'middletown', 'OH', 1, 1000000);
 
select * from customer where id in ('1000','1002');

delete from customer where id in ('1000','1002');

select customer, sum(total) from 
