-- DA/DS Ochieng F.
USE [001_PORTFOLIO]

-- TICKETS ANALYSIS
SELECT * FROM cleaned_ticket_data

--1. Ticket volume & SLA performance by department
SELECT
	department,
	COUNT(*) as ticket_volume,
	AVG(sla_met * 1.0) as sla_met_rate
FROM cleaned_ticket_data
GROUP BY department
ORDER BY sla_met_rate DESC

-- Average and median resolution time by agents
SELECT
	distinct agent_name,
	COUNT(*) OVER (PARTITION BY agent_name) as tickets_handled,
	ROUND( AVG(resolution_hours) OVER (PARTITION BY agent_name), 2) as avg_resolution_hrs,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY resolution_hours)
		OVER (PARTITION BY agent_name) as median_resolution_hrs
FROM cleaned_ticket_data
ORDER BY avg_resolution_hrs

-- Monthly SLA Trends

SELECT
	month_opened,
	COUNT(*) as total_tickets,
	ROUND(AVG(sla_met * 1.0), 4) as sla_met_rate
FROM cleaned_ticket_data
GROUP BY month_opened
ORDER BY month_opened

-- Priority breakdown by Industry
SELECT
	industry,
	[priority],
	COUNT(*) as ticket_count
FROM cleaned_ticket_data
GROUP BY industry, [priority]
ORDER BY industry, [priority]

-- SLA Breach - Top 10 Clients
SELECT
	TOP 10
	client_name,
	COUNT(*) as total_tickets,
	SUM(1 - sla_met) as breached_tickets,
	ROUND(AVG(1.0 - sla_met), 2) as breach_rate
FROM cleaned_ticket_data
GROUP BY client_name
HAVING SUM(1 - sla_met) > 0
ORDER  BY breached_tickets DESC

-- Ticket Volume & SLA Rate by  department
SELECT
	department,
	COUNT(*) as total_tickets,
	ROUND(AVG(sla_met * 1.0), 2) as sla_met_rate
FROM cleaned_ticket_data
GROUP BY department
ORDER BY total_tickets

-- Top 5 Longest Resolution Tickets
SELECT
	TOP 5
	ticket_id,
	client_name,
	agent_name,
	ROUND(resolution_hours,0) as resolution_hours,
	sla_hours,
	sla_met
FROM cleaned_ticket_data
ORDER BY resolution_hours DESC

-- Aging tickets still open -- found none 
SELECT
	ticket_id,
	client_name,
	[priority],
	ticket_age_days
FROm cleaned_ticket_data
WHERE resolved_date IS NULL
ORDER BY ticket_age_days DESC

-- Weekly ticket loadf trend
SELECT
	opened_week,
	COUNT(*) as weekly_tickets
FROM cleaned_ticket_data
GROUP BY opened_week
ORDER BY opened_week

-- Resolution performance by priority
SELECT
	[priority],
	AVG(resolution_hours) as avg_resolution_hrs,
	AVG(sla_met * 1.0) as sla_met_rate
FROM cleaned_ticket_data
GROUP BY [priority]
ORDER BY avg_resolution_hrs

