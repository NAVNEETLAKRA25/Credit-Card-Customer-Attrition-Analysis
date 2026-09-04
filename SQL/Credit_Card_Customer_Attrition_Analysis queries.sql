
-- How many total customers are present in the credit card customer dataset?

SELECT COUNT(*) AS total_customers
FROM credit_card_customers;


-- How many customers are existing customers and how many have been lost/churned?
SELECT Attrition_Flag, COUNT(*) AS total_customers
FROM credit_card_customers
GROUP BY Attrition_Flag;


-- What is the average credit limit for each type of credit card?

SELECT Card_Category, ROUND(AVG(Credit_Limit),2) AS avg_credit_limit
FROM credit_card_customers
GROUP BY Card_Category
ORDER BY avg_credit_limit DESC;


-- Who are the top 10 customers based on their total transaction amount?

SELECT CLIENTNUM,
       Total_Trans_Amt
FROM credit_card_customers
ORDER BY Total_Trans_Amt DESC
LIMIT 10;



-- How is customer attrition distributed across different genders?

SELECT Gender, Attrition_Flag , COUNT(*) AS total
FROM credit_card_customers
GROUP BY Gender, Attrition_Flag;



-- How many customers belong to each education level?

SELECT Education_Level , COUNT(*) AS total_customers
FROM credit_card_customers
GROUP BY Education_Level
ORDER BY total_customers DESC;


-- What is the average transaction amount for customers with different marital statuses?

SELECT Marital_Status , ROUND(AVG(Total_Trans_Amt),2) AS avg_transaction
FROM credit_card_customers
GROUP BY Marital_Status;


-- How does average credit utilization vary across different income categories?

SELECT Income_Category, ROUND(AVG(Avg_Utilization_Ratio),2) AS avg_utilization
FROM credit_card_customers
GROUP BY Income_Category;


-- Which card category generates the highest total transaction amount?

SELECT Card_Category, SUM(Total_Trans_Amt) AS total_transaction_amount
FROM credit_card_customers
GROUP BY Card_Category
ORDER BY total_transaction_amount DESC;


-- What is the average credit limit of existing customers compared with attrited customers?

SELECT Attrition_Flag,
       ROUND(AVG(Credit_Limit),2) AS avg_credit_limit
FROM credit_card_customers
GROUP BY Attrition_Flag;