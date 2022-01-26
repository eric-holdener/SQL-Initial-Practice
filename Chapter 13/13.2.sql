alter table payment
add index idx_date_amt (payment_date, amount);