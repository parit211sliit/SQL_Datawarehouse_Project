-- Check for NULLs or Duplicates in Primary Key
-- Expectation: No Results

SELECT cst_id,COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*)>1 OR cst_id IS NULL

SELECT cst_id,COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*)>1 OR cst_id IS NULL



-- Check for Unwanted Spaces
-- Expectation: No Results

SELECT cst_firstname
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

SELECT cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

SELECT cst_lastname
FROM bronze.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname)

SELECT cst_lastname
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname)

SELECT cst_marital_status
FROM bronze.crm_cust_info
WHERE cst_marital_status != TRIM(cst_marital_status)

SELECT cst_gndr
FROM bronze.crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr)

SELECT *
FROM bronze.crm_cust_info

-- Data Standardization & Consistency

SELECT DISTINCT(cst_gndr)
FROM bronze.crm_cust_info

SELECT DISTINCT(cst_gndr)
FROM silver.crm_cust_info

SELECT DISTINCT(cst_marital_status)
FROM bronze.crm_cust_info

SELECT DISTINCT(cst_marital_status)
FROM silver.crm_cust_info

SELECT *
FROM silver.crm_cust_info
