-- SQL Backend Data Validation Queries (Sample)
-- Purpose: demonstrate QA reconciliation + integrity checks

-- 1) Row count validation
SELECT COUNT(*) AS total_records
FROM customers;

-- 2) Duplicate check on primary key
SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 3) Null check for critical fields
SELECT COUNT(*) AS null_email_count
FROM customers
WHERE email IS NULL;

-- 4) Source vs Target reconciliation (CDC-style validation)
SELECT
  (SELECT COUNT(*) FROM customers_source) AS source_count,
  (SELECT COUNT(*) FROM customers_target) AS target_count;

-- 5) Missing records in target
SELECT s.customer_id
FROM customers_source s
LEFT JOIN customers_target t
  ON s.customer_id = t.customer_id
WHERE t.customer_id IS NULL;

-- 6) Field-level mismatch check
SELECT s.customer_id,
       s.email AS source_email,
       t.email AS target_email
FROM customers_source s
JOIN customers_target t
  ON s.customer_id = t.customer_id
WHERE s.email <> t.email;
