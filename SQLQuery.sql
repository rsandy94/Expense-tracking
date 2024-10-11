-- total expenses CY
select FORMAT(SUM(ABS(amount)), 'C', 'en-US')  from vw_expense_tracking
where master_category<>'INCOME'
and category not in ('CREDIT CARD PAYMENT', 'INVESTMENT SAVINGS', 'INVESTMENT TRANSFERS','TRANSFERS','SAVINGS')
and account <>'GOLDMAN SACHS'
and year(transaction_date)=2024 

-- total expenses PY
select FORMAT(SUM(ABS(amount)), 'C', 'en-US')  from vw_expense_tracking
where master_category<>'INCOME'
and category not in ('CREDIT CARD PAYMENT', 'INVESTMENT SAVINGS', 'INVESTMENT TRANSFERS','TRANSFERS','SAVINGS')
and account <>'GOLDMAN SACHS'
and year(transaction_date)=2023 and transaction_date<='2023-06-30'

--INCOME
SELECT FORMAT(SUM(ABS(amount)), 'C', 'en-US') 
FROM vw_expense_tracking
WHERE standardized_description LIKE '%CMA CGM%'
   OR standardized_description LIKE '%TELADOC%'
   OR standardized_description LIKE '%SIGNIFY%';

select * from vw_expense_tracking where description like '%TELADOC%'

