select * from airbnb;

-- Total Duplicate Rows
select listing_id, date, available, price, count(date) from airbnb
group by listing_id, date, available, price
having count(date) > 1;
-- total 365 rows have duplicate values in this table and only listing_id 12898806 contain all the duplicate values


--Create Table airbnb1 to contain the list after filtering the original table
create table airbnb1 (
  id serial primary key,
  listing_id bigint not null,
  date date not null,
  available boolean not null,
  price float
);


-- Inserting the non-duplicate elements in airbnb1 table
insert into airbnb1 (listing_id, date, available, price) (
	select listing_id, date, available, price from airbnb
	group by listing_id, date, available, price
);

select * from airbnb1 order by listing_id;
