use Github1;
select * from customer_transaction;
select * from customer;

-- 1. How to search any word (Character/ Text) in Colum place not define its anywhere in this sentence 
-- Ans.
-- like operator use for testable comparison 
select * from customer_transaction;

select * from customer_transaction
where transaction_channel like "%transfer%";

-- 2. How to extract the record there 6th Character is D. 

select * from customer_transaction
where transaction_channel like "_____D%"; # put _ on every place so here we need to put 5_ for find 6th word.

select * from customer_transaction
where transaction_channel like "%D%";

-- 3. How to find any amount that is exist in a specific range.
-- using between-and operator.
select * from customer_transaction
where transaction_amount between 0 and 10000;

-- 4. Write a query for some value or some text we do not want i any record. (Single Value)
-- Not operator (!=)

-- op1
select * from customer_transaction;
select * from customer_transaction
where transaction_channel != "POS-Walmart";

-- op2
select * from customer_transaction
where not transaction_channel = "POS-Walmart";

-- op3
select * from customer_transaction
where transaction_channel <> "POS-Walmart";

-- 4. Write a query for some value or some text we do not want i any record. (Multi Value)

select * from customer_transaction
where transaction_channel not in ("POS-Walmart", "ATM withdrawal");

-- 5. How to find their unique values receding within the column

-- Ans. using distinct function
select distinct account_type from customer_account;

-- 6. How to count Unique values within the column.

select count(distinct account_type) as unique_acc_types from customer_account;

-- 7. How to count Total values within the column.
select count(*) from customer_account;
select count(account_type) from customer_account;

-- 8. How to find limited record (Whole Record)

select * from customer_account limit 5;

-- 9. How to find limited record (multi column)
select account_type, customer_id from customer_account where account_type= "SAVINGS" limit 5;

-- please check the other variations of using limit in MySQL (using with "offset")
