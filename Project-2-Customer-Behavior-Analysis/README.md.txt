# Customer DNA – Customer Loyalty & Churn Intelligence System

## Project Overview
Customer DNA is a SQL-based customer analytics project designed to understand customer purchasing behaviour, identify loyal customers, measure customer lifetime value, and detect potential churn risks.

## Objectives
- Analyse customer purchase frequency.
- Calculate Customer Lifetime Value (CLV).
- Identify loyal, returning, and new customers.
- Detect high, medium, and low churn-risk customers.
- Compare repeat and one-time buyers.
- Analyse payment performance.
- Identify popular products and high-value customer segments.

## Tools & Technologies
- MySQL 8.0
- MySQL Workbench
- SQL
- CSV datasets

## Database Tables
1. Customers
2. Orders
3. Products
4. Order_Items
5. Payments

## SQL Concepts Used
- CREATE DATABASE and CREATE TABLE
- INSERT and SELECT
- JOIN operations
- GROUP BY and ORDER BY
- Aggregate functions
- CASE statements
- Common Table Expressions (CTE)
- Window functions: RANK() and LAG()
- Date calculations using DATEDIFF()

## Key Findings
- Analysed 12 customers and 19 orders.
- Identified loyal, returning, and new customer segments.
- Classified customers based on purchase inactivity.
- Calculated customer lifetime spending.
- Analysed payment statuses and product popularity.
- Compared customer activity across cities and months.

## Project Structure
- SQL – Complete SQL script
- Dataset – Five CSV files
- Documentation – Project report and presentation
- README.md – Project overview

## Limitations
This project uses an illustrative sample dataset. Churn classification is based on the last purchase date and is an analytical indicator, not a predictive machine-learning model.

## Conclusion
Customer DNA demonstrates how SQL can transform customer transaction data into useful business insights that support customer retention, loyalty analysis, and data-driven decision-making.