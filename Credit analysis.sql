USE credit;

-- 1. What is the total number of customers?
SELECT COUNT(*) AS total_customers
FROM credit_train;

-- 2. What is the distribution of loan status?
SELECT loan_status, COUNT(*) AS total
FROM credit_train
GROUP BY loan_status; 

-- 3. What is the average annual income of customers?
SELECT AVG(annual_income) AS avg_income
FROM credit_train;

-- 4. What is the average credit score?
SELECT AVG(credit_score) AS avg_credit_score
FROM credit_train;

-- 5. How many customers have a credit score below 600 (high risk)?
SELECT COUNT(*) AS high_risk_customers
FROM credit_train
WHERE credit_score < 600; 
 
-- 6. What is the number of customers with high income (>100,000)?
SELECT COUNT(*) AS high_income_customers
FROM credit_train
WHERE annual_income > 100000; 

-- 7. What is the distribution of loan purposes?
SELECT purpose, COUNT(*) AS total
FROM credit_train
GROUP BY purpose
ORDER BY total DESC;

-- 8. How does home ownership vary among customers?
SELECT home_ownership, COUNT(*) AS total
FROM credit_train
GROUP BY home_ownership;

-- 9. What is the average credit score by loan status?
SELECT loan_status, AVG(credit_score) AS avg_credit_score
FROM credit_train
GROUP BY loan_status;   

-- 10. What is the average annual income by loan status?
SELECT loan_status, AVG(annual_income) AS avg_income
FROM credit_train
GROUP BY loan_status;

-- 11. How does monthly debt differ between defaulters and non-defaulters?
SELECT loan_status, AVG(monthly_debt) AS avg_debt
FROM credit_train
GROUP BY loan_status;

-- 12. Which home ownership group has the highest number of high-risk customers?
SELECT home_ownership, COUNT(*) AS total
FROM credit_train
WHERE credit_score < 600
GROUP BY home_ownership;
 
 -- 13. Identify customers with high current credit balance (>500,000).
 SELECT *
FROM credit_train
WHERE current_credit_balance > 500000;

-- 14. What is the loan status distribution by purpose?
SELECT purpose, loan_status, COUNT(*) AS total
FROM credit_train
GROUP BY purpose, loan_status; 

-- 15. Classify customers based on job experience.
SELECT 
  CASE 
    WHEN years_in_current_job < 2 THEN 'New'
    ELSE 'Experienced'
  END AS experience_level,
  COUNT(*) AS total
FROM credit_train
GROUP BY experience_level; 