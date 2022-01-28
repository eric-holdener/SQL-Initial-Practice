select year_no, month_no, tot_sales,
	lag(tot_sales, 1)  over (order by month_no) last_month_sales
from sales_fact
where year_no = 2020