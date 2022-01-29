select listing_id, avg(price) from airbnb1
where available = true
group by listing_id
having avg(price) > 500;
