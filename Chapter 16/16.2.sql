select year_no, month_no, tot_sales,
	rank() over (partition by year_no
				order by total_sales desc) sales_rank
from sales_fact