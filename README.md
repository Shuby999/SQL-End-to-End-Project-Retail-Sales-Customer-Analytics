# SQL-End-to-End-Project-Retail-Sales-Customer-Analytics
This project allows students to apply SQL concepts in a real-world business scenario and gain hands-on experience in database design and data analysis.

# 🛒 Retail Sales & Customer Analytics (SQL Project)

## 📌 Project Overview
This project focuses on analyzing retail sales and customer data using SQL. The goal is to extract meaningful insights to support business decisions such as improving sales, understanding customer behavior, and analyzing product performance.

---

## 🏢 Business Background
NovaMart Retail Solutions Pvt. Ltd. operates across multiple cities and sells consumer electronics through online and offline channels. The company collects large amounts of data related to customers, products, and orders.

This project uses SQL to analyze that data and generate insights for better decision-making.

---

## 🎯 Objectives
- Create and manage a relational database  
- Perform data analysis using SQL queries  
- Analyze customer behavior and sales trends  
- Generate business insights for decision-making  

---

## 🗂️ Database Structure

The project includes 4 main tables:

- **Customers** → Customer details (ID, Name, City, State, Signup Date)  
- **Products** → Product details (ID, Name, Category, Price)  
- **Orders** → Order details (Order ID, Customer ID, Date, Status)  
- **Order_Details** → Product-level order details (Quantity, Product ID)  

---

## ⚙️ Tools & Technologies
- SQL (MS SQL Server)  
- Relational Database  
- Joins, Aggregate Functions, Subqueries  

---

## 📊 Key Analysis Performed

- Total Sales Revenue Calculation  
- Average Order Value  
- Sales by Category and City  
- Customer-Level and Order-Level Reports  
- Repeat & High-Value Customer Identification  
- Monthly Sales Trend Analysis  
- Identification of Products Never Ordered  

---

## 🔍 Sample Queries

```sql
-- Total Revenue
SELECT SUM(p.Price * od.Quantity) AS Total_Revenue
FROM Order_Details od
JOIN Products p ON od.ProductID = p.ProductID;
