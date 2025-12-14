

 **SQL-Based Cost Optimization Analysis**



**Project Overview**

This project focuses on analyzing product-wise and department-wise costs using SQL to identify high-cost drivers and optimization opportunities.
The analysis simulates a real-world Systems / Hardware cost scenario and demonstrates how SQL can support business and cost optimization decisions.

 **Project Objectives**

Analyze cost distribution across departments

Identify high-cost products using benchmarking

Support cost optimization decisions using SQL queries

Demonstrate strong SQL skills aligned with business use cases

**Skills Demonstrated**

SQL (JOINs, GROUP BY, HAVING, Subqueries)

Cost & Business Analysis

Data-Driven Decision Making

Analytical Thinking

Problem Solving

 **Project Structure**
SQL-Cost-Optimization/
│
├── SQL_Cost_Optimization.ipynb
├── queries.sql
├── README.md

 **Database Schema**

Two tables were created to represent product and cost data.

**Products Table**

product_id – Unique product identifier

product_name – Name of the product

department – Department category

**Costs Table**

cost_id – Unique cost record

product_id – Linked product ID

cost – Cost value

year – Financial year

 **Sample Business Data**

The dataset represents hardware and infrastructure costs across departments such as IT, HR, and Networking.

Example products include:

Servers

Laptops

Networking equipment

Office furniture

 **Key SQL Business Queries**
 Department-wise Total Cost

Identifies departments with the highest cost contribution.

SELECT p.department, SUM(c.cost) AS total_cost
FROM products p
JOIN costs c
ON p.product_id = c.product_id
GROUP BY p.department;

Average Cost per Product

Helps identify expensive products.

SELECT p.product_name, AVG(c.cost) AS avg_cost
FROM products p
JOIN costs c
ON p.product_id = c.product_id
GROUP BY p.product_name;

High-Cost Products (Above Overall Average)

Used for benchmarking.

SELECT p.product_name, c.cost
FROM products p
JOIN costs c
ON p.product_id = c.product_id
WHERE c.cost > (
    SELECT AVG(cost) FROM costs
);

Department-wise Cost Benchmarking

Identifies products costing more than their department average.

SELECT p.product_name, p.department, c.cost
FROM products p
JOIN costs c
ON p.product_id = c.product_id
WHERE c.cost > (
    SELECT AVG(c2.cost)
    FROM products p2
    JOIN costs c2
    ON p2.product_id = c2.product_id
    WHERE p2.department = p.department
);

5️ Top 3 Most Expensive Products

Highlights immediate optimization targets.

SELECT p.product_name, c.cost
FROM products p
JOIN costs c
ON p.product_id = c.product_id
ORDER BY c.cost DESC
LIMIT 3;

**** **Business Insights******

The IT department contributes the highest overall cost

Several products exceed both global and department-level averages

High-cost servers and laptops are strong candidates for optimization

**Cost Optimization Recommendations**

Focus optimization efforts on IT hardware

Benchmark high-cost products against department averages

Review vendor pricing for servers and laptops

Use SQL dashboards for continuous cost monitoring

 **Business Value**

This project demonstrates how SQL analytics can support:

Cost optimization strategies

Cross-team collaboration (finance, supply chain, product teams)

Data-driven business decision making

 **Tools & Technologies**

SQL (SQLite)

Python (for SQL execution in Google Colab)

Google Colab

 **Conclusion**

This project highlights the use of SQL for cost optimization analysis, combining strong querying skills with business-oriented insights.
It aligns closely with focus on cost efficiency, analytics, and cross-functional collaboration.

