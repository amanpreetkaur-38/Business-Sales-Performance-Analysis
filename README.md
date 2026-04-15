### Business-Sales-Performance-Analysis

## Project Overview

This project analyzes business sales data to extract meaningful insights across revenue, profitability, customer behavior, and product performance. The goal is to move beyond raw transactional records and build a clear, structured view of business health — using SQL for data analysis and Power BI for interactive reporting.

---

## Problem Statement

Many businesses collect large amounts of sales data but lack the tools or structure to interpret it effectively. This project addresses several common challenges:

- Distinguishing which products generate revenue versus actual profit
- Understanding why certain regions underperform
- Tracking how sales trends evolve over time
- Identifying and retaining high-value customers
- Evaluating whether discount strategies are working as intended

The solution is a data-driven analysis pipeline paired with a dynamic dashboard that makes these answers accessible at a glance.

---

## Tools & Technologies

| Tool            | Purpose                                      |
|-----------------|----------------------------------------------|
| SQL (MySQL)     | Data cleaning, transformation, and analysis  |
| Power BI        | Dashboard development and visualization      |
| Excel / CSV     | Raw data source                              |
| DAX (Power BI)  | KPI calculations and custom metrics          |

---

## Process Walkthrough

### 1. Data Cleaning & Preparation (SQL)

Before any analysis, the raw dataset was cleaned and standardized:

- Removed null values and inconsistent records
- Standardized date formats using `DATE_FORMAT`
- Structured the data into a reliable, analysis-ready format

### 2. Data Analysis (SQL)

**Sales Trends**
Monthly revenue was analyzed to identify growth patterns and seasonal fluctuations across the reporting period.

**Top Products**
Extracted the top 10 products by revenue and identified high-performing SKUs contributing most to overall sales.

**Customer Analysis**
Customers were ranked by total spend and segmented into two groups — repeat buyers and one-time purchasers — to better understand retention and purchasing behavior.

**Category Performance**
Revenue and quantity sold were analyzed across product categories and sub-categories, with a focus on comparing high-volume segments against high-margin ones.

**Profitability Insights**
Categories were evaluated for profit efficiency — surfacing cases where high revenue did not translate into meaningful profit, and where low-volume products quietly delivered strong margins.

**SQL Techniques Applied**
- Window functions — `RANK()` and cumulative revenue calculations
- Aggregations — `SUM`, `AVG`, `COUNT`
- `CASE` statements for customer segmentation logic
- Grouping and sorting for business-level summaries

### 3. KPI Metrics

| Metric                    | Value      |
|---------------------------|------------|
| Total Sales               | $2.27M     |
| Total Profit              | $282.86K   |
| Total Quantity Sold       | 37K units  |
| Average Order Value (AOV) | $460.85    |
| YTD Sales                 | $724.99K   |
| Month-over-Month Growth   | 0.04%      |

### 4. Dashboard Development (Power BI)

An interactive Power BI dashboard was built to make the analysis accessible to non-technical stakeholders. It includes:

- Region-wise sales and profit breakdown
- Sales trend over time
- Category-wise performance comparison
- Profit analysis by product category
- Geographic visualization via map view
- KPI summary cards for quick reference
- Dynamic filters for Year, Region, and Category

---

## Key Insights

- Technology is the highest-performing category by both revenue and profit margin.
- Office Supplies shows strong demand but consistently low profit — pointing to a pricing or cost structure issue.
- The West region leads overall performance, while the South lags behind with no clear recovery trend.
- Sales growth across the period is inconsistent, with no strong or sustained upward trajectory.
- A relatively small segment of customers accounts for a significant portion of total revenue.

---

## Business Recommendations

- Prioritize the Technology category for revenue growth initiatives — it consistently delivers results.
- Address the margin problem in Office Supplies through pricing adjustments or supplier cost review.
- Conduct a focused investigation into the South region to understand root causes and apply strategies that have worked in stronger-performing regions.
- Develop targeted retention programs for high-value customers to protect and grow that revenue base.
- Revisit the discount strategy — the data suggests that higher discounts do not reliably lead to proportionally higher revenue.

---

## Impact

This project demonstrated how structured data analysis can replace guesswork with clarity. Key outcomes include:

- A reliable foundation for data-driven decision making across the business
- Identification of profit leakages within high-volume product categories
- A clearer understanding of customer segments and their relative value
- A scalable, reusable dashboard that can support ongoing business monitoring
