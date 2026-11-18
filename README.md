# ZestEats – Food Delivery Sales Analysis

## Project Overview

ZestEats is an end-to-end data analytics project focused on analyzing food delivery business data using **MySQL and Power BI**.

The project analyzes 8,500 food delivery orders across 8 Indian cities over a two-year period (January 2023 – December 2024). The objective is to evaluate sales performance, customer behaviour, restaurant performance, order outcomes, and delivery operations.

SQL was used to perform data analysis and answer business questions, while Power BI was used to develop an interactive dashboard to visualize key performance indicators (KPIs), trends, and business insights.

## Tools & Technologies

- MySQL
- MySQL Workbench
- Microsoft Power BI
- DAX
- Power Query
- Excel

## Dataset Overview

The dataset contains information about:

| Table | Records |
|---|---:|
| Orders | 8,500 |
| Order Items | 17,806 |
| Customers | 2,000 |
| Deliveries | 5,948 |
| Restaurants | 150 |
| Menu Items | 750 |
| Delivery Partners | 300 |

**Business Coverage:**
- 8 Indian cities
- 24 months of data
- January 2023 – December 2024

## SQL Analysis

Performed business-oriented SQL analysis using:

- Sales and revenue analysis
- Order status and cancellation analysis
- Customer segmentation and purchasing behaviour
- Top-performing restaurants and cuisines
- City-wise revenue and commission analysis
- Payment and discount analysis
- Delivery performance analysis
- Repeat customer analysis
- Business performance metrics

### SQL Concepts Used

- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- Aggregate Functions
- INNER JOIN, LEFT JOIN and other JOINs
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Date Functions
- Conditional Aggregations

## Power BI Dashboard

Developed an interactive Power BI dashboard to monitor and analyze food delivery business performance.

### Dashboard Highlights

- **KPI Overview:** Revenue, total orders, average order value, delivery rate, average delivery time, and customer ratings.
- **Sales Performance:** Monthly revenue trends and year-over-year revenue comparison.
- **Order Analysis:** Delivered, cancelled, refunded, and pending order breakdown.
- **City & Restaurant Analysis:** Revenue contribution by city, restaurant performance, and cuisine analysis.
- **Customer Analysis:** Customer segmentation, loyal customer contribution, repeat purchases, and premium vs. non-premium customer comparison.
- **Delivery Performance:** Delivery time, peak ordering hours, and customer ratings.

### Key Dashboard Metrics

| KPI | Result |
|---|---:|
| Total Orders | 8,500 |
| Delivered Orders | 5,107 |
| Delivered Revenue | ₹37.28 Lakhs |
| Average Order Value | ₹730 |
| Delivery Rate | 60.1% |
| Average Delivery Time | 35.1 Minutes |
| Average Customer Rating | 3.74 / 5 |

*Revenue and average order value are calculated using delivered orders. Delivery time and customer rating are based on delivery records.*

## Key Business Insights

- Approximately 40% of orders were unsuccessful, including cancelled, refunded, and pending orders.
- Delhi, Bangalore, and Mumbai contributed approximately 56% of delivered revenue.
- Loyal customers contributed 46% of delivered revenue.
- Premium members did not show a higher average order value compared with non-premium customers.
- Peak delivery demand occurred between 1–3 PM and 7–10 PM, with 8 PM being the busiest hour.
- 28 restaurants had no orders and were identified as inactive.

## Data Quality & Challenges

- Identified missing customer ratings and orders without delivery records.
- Investigated inconsistencies in customer signup dates and order dates.
- Validated relationships between the seven dataset tables.
- Handled missing values appropriately and flagged date inconsistencies rather than silently removing records.
- Excluded unrelated files that did not belong to the ZestEats dataset.

## Project Objective

The objective of this project is to demonstrate practical data analytics skills by combining SQL-based business analysis with Power BI dashboard development to generate meaningful insights and support data-driven decision-making.

## Author

**Nihal**

B.Sc. Information Technology | Aspiring Data Analyst

**Skills:** SQL | Power BI | Excel | Python | DAX | Data Analysis
