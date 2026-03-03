SELECT
	DATE_TRUNC('MONTH', orderdate) :: DATE AS year_month,
	COUNT(DISTINCT customerkey) AS total_customers,
	SUM(total_net_revenue) AS total_revenue,
	SUM(total_net_revenue) / COUNT(DISTINCT customerkey) AS customer_revenue
	FROM cohort_analysis
	GROUP BY year_month
	ORDER BY year_month;