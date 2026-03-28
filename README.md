# Business-Sales-Performance-Analysis

Project Overview
This project focuses on analyzing business sales data to uncover key insights related to revenue, profit, regional performance, and product category contributions.
The goal was to transform raw sales data into an interactive dashboard that helps stakeholders:
Track performance over time
Identify high/low performing regions
Understand category-level profitability
Make data-driven business decisions

Problem Statement
Businesses often struggle with:
Lack of visibility into regional performance
Poor understanding of which product categories drive profit vs just revenue
Difficulty tracking sales trends over time
No clear insights into growth patterns (MoM, YTD)
This project solves that by building a centralized performance dashboard.

Data Cleaning & Preparation (SQL)
The dataset was cleaned and transformed using SQL. Key steps included:
Removed duplicate records
Handled null / missing values
Standardized date formats
Created derived columns:
Year-Month for trend analysis
Profit calculations
Aggregated sales metrics
Ensured data consistency across regions & categories
Structured data for easy aggregation (GROUP BY, joins, filters)

Key Metrics Created
Total Sales: 2.27M
Total Profit: 282.86K
Total Quantity: 37K
Average Order Value (AOV): 460.85
YTD Sales: 724.99K
MoM Growth: 0.04

Dashboard Visualizations
1. KPI Cards
Total Sales, Profit, Quantity, AOV, YTD Sales, MoM Growth
Gives quick business health snapshot

2. Sales & Profit by Region
West → ~0.73M (highest)
East → ~0.67M
Central → ~0.50M
South → ~0.39M
Identifies strongest and weakest regions

3. Sales Trend (Time Series)
Monthly trend of Sales & Profit
Helps detect seasonality and fluctuations

4. Quantity by Category
Office Supplies → 22K (highest)
Furniture → 7.5K
Technology → 6.9K
Shows volume vs value mismatch

5. Profit by Category
Technology → ~145K (highest)
Office Supplies → ~120K
Furniture → ~17K (very low)
Critical insight: Furniture sells but doesn’t make money

6. Sales by Category
Technology → ~0.84M
Furniture → ~0.74M
Office Supplies → ~0.62M

7. Category Contribution (Donut Chart)
Technology → ~36.78%
Furniture → ~32.49%
Office Supplies → ~30.73%

8. Geographic Map
Global distribution of sales
Adds spatial understanding

Insights
West region is the top performer (~0.73M sales)
Furniture is underperforming in profit (~17K) despite decent sales
Technology is the most profitable category (~145K)
Office Supplies dominates in quantity (22K units) but not in profit
Sales trend shows fluctuations, not steady growth
MoM growth is almost flat (0.04) → business stagnation risk

Business Impact
This dashboard enables:
Better regional targeting
Focus on high-margin categories (Technology)
Identification of loss-making segments (Furniture)
Improved decision-making with real-time metrics
Monitoring of growth and performance trends

Recommendations
Cut the nonsense with Furniture — margins are terrible. Either:
Increase pricing
Reduce cost
Or stop pushing it aggressively
Double down on Technology — it’s clearly your money-maker
West region is working → replicate that strategy in other regions
Office Supplies sells a lot but doesn’t translate to profit
→ optimize pricing or bundles
Growth is basically flat
→ run campaigns, offers, or A/B test pricing strategies

 Tools Used
SQL → Data cleaning & transformation
Power BI / Excel (Dashboarding) → Visualization
Data Analysis Techniques:
Aggregation
Trend Analysis
Category Contribution
KPI Tracking
