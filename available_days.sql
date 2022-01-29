
-- Created table avail_days that will contain the property grouped by listing_id that was available
create table avail_airbnb (
	listing_id bigint not null,
	availaible_days int
);


-- Created table unavail_days that will contain the property grouped by listing_id that was unavailable
create table unavail_airbnb (
	listing_id bigint not null,
	unavailaible_days int
);

select listing_id, count(date) from airbnb1
where available = true
group by listing_id;


select listing_id, count(date) from airbnb1
where available = false
group by listing_id;


--Created Two table namely avail_airbnb-> containing all the available days of property
-- and unavail_airbnb-> containing all the available days of property
-- and joined these table.

-- Inserting values into avail_airbnb
insert into avail_airbnb (listing_id, availaible_days)
select listing_id, count(date) from airbnb1
where available = true
group by listing_id
order by listing_id;



-- Insert into unavail_airbnb
insert into unavail_airbnb (listing_id, unavailaible_days)
select listing_id, count(date) from airbnb
where available = false
group by listing_id
order by listing_id;




select 
	avail_airbnb.listing_id, 
	avail_airbnb.availaible_days, 
	unavail_airbnb.unavailaible_days,
	cast(avail_airbnb.availaible_days as float)
		/(cast(unavail_airbnb.unavailaible_days as float) 
		  	+ cast(avail_airbnb.availaible_days as float))
		as fraction_total_days
	from avail_airbnb
join unavail_airbnb on avail_airbnb.listing_id = unavail_airbnb.listing_id;




-- Creating table for property avail_days, unavail_days and fraction of avail_days
create table new_airbnb (
	listing_id bigint,
	availaible_days int,
	unavailaible_days int,
	fraction_avail_days float
);


-- Inserting into new_airbnb with all required columns
insert into new_airbnb (listing_id, availaible_days, unavailaible_days, fraction_avail_days)
select 
	avail_airbnb.listing_id, 
	avail_airbnb.availaible_days, 
	unavail_airbnb.unavailaible_days,
	cast(avail_airbnb.availaible_days as float)
		/(cast(unavail_airbnb.unavailaible_days as float) 
		  	+ cast(avail_airbnb.availaible_days as float))
		as fraction_total_days
	from avail_airbnb
full outer join unavail_airbnb on avail_airbnb.listing_id = unavail_airbnb.listing_id;



select * from new_airbnb;
