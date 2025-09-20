/*
=============================================================
Create a Table for each sheet available in each source 
=============================================================

=============================================================
crm_cust_info
=============================================================
*/

CREATE TABLE bronze.crm_cust_info (
cst_id INT,
cst_key NVARCHAR (50),
cst_firstname NVARCHAR (50),
cst_lastname NVARCHAR (50),
cst_marital_status NVARCHAR (50),
cst_gndr NVARCHAR (50),
cst_create_date DATE
);

/*
=============================================================
crm_prd_info
=============================================================
*/


CREATE TABLE bronze.crm_prd_info (
prd_id INT,
prd_key NVARCHAR (50),
prd_nm NVARCHAR (50),
prd_cost INT,
prd_line NVARCHAR (50),
prd_start_dt DATETIME,
prd_end_dt DATETIME
);

/*
=============================================================
crm_sales_details
=============================================================
*/

CREATE TABLE bronze.crm_sales_details (
sls_ord_num NVARCHAR (50),
sls_prd_key NVARCHAR (50),
sls_cust_id INT,
sls_order_dt DATE,
sls_ship_dt DATE,
sls_due_dt DATE,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

/*
=============================================================
erp_CUST_AZ12
=============================================================
*/

CREATE TABLE bronze.erp_CUST_AZ12 (
CID NVARCHAR (50),
BDATE DATE,
GEN NVARCHAR (50)
);

/*
=============================================================
erp_LOC_A101
=============================================================
*/

CREATE TABLE bronze.erp_LOC_A101 (
CID NVARCHAR (50),
CNTRY NVARCHAR (50)
);

/*
=============================================================
erp_PX_CAT_G1V2
=============================================================
*/

CREATE TABLE bronze.erp_PX_CAT_G1V2 (
ID NVARCHAR (50),
CAT NVARCHAR (50),
SUBCAT NVARCHAR (50),
MAINTENANCE NVARCHAR (50)
);


/*
=============================================================
Drop and relabel - erp_CUST_AZ12
=============================================================
*/

IF OBJECT_ID ('bronze.erp_CUST_AZ12','U') IS NOT NULL
DROP TABLE bronze.erp_CUST_AZ12;
CREATE TABLE bronze.erp_cust_az12 (
cid NVARCHAR (50),
bdate DATE,
gen NVARCHAR (50)
);

/*
=============================================================
Drop and relabel - erp_LOC_A101
=============================================================
*/

IF OBJECT_ID ('bronze.erp_LOC_A101','U') IS NOT NULL
DROP TABLE bronze.erp_LOC_A101;
CREATE TABLE bronze.erp_loc_a101 (
cid NVARCHAR (50),
cntry NVARCHAR (50)
);

/*
=============================================================
Drop and relabel - erp_PX_CAT_G1V2
=============================================================
*/

IF OBJECT_ID ('bronze.erp_PX_CAT_G1V2','U') IS NOT NULL
DROP TABLE bronze.erp_PX_CAT_G1V2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
id NVARCHAR (50),
cat NVARCHAR (50),
subcat NVARCHAR (50),
maintenance NVARCHAR (50)
);



/*
=============================================================
Drop and relabel - crm_sales_details
=============================================================
*/


IF OBJECT_ID ('bronze.crm_sales_details','U') IS NOT NULL
DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
sls_ord_num NVARCHAR (50),
sls_prd_key NVARCHAR (50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);


