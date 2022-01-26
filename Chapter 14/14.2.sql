create view county_pmts
(country, tot_payments)
as
	select country, 
	(select sum(pmt.amount)
	from payment pmt
	inner join customer cust
		on cust.customer_id = pmt.customer_id
	inner join address ad
		on ad.address_id = cust.address_id
	inner join city ct
		on ad.city_id = ct.city_id
	inner join country ctry
		on ctry.country_id = ct.country_id) tot_payments
	from country