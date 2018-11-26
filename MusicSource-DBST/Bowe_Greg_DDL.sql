-- Bowe_Greg_DDL
-- University of Maryland University College
-- DDL build script forp DBST 651 Fall 2018

set echo on;
set serveroutput on;
set linesize 150;
set pagesize 30;

DROP TABLE sale;
DROP TABLE product;
DROP TABLE employee;
DROP TABLE customer;
DROP TABLE musicstore;
DROP TABLE product_category;

CREATE TABLE customer (
    cust_no      NUMBER(8,0),
    cust_fname   VARCHAR2(60),
    cust_lname   VARCHAR2(45),
    cust_pn      NUMBER,
    cust_em      VARCHAR2(50)
);

CREATE TABLE employee (
    emp_id           NUMBER(8,0),
    emp_fname        VARCHAR2(66)NOT NULL,
    emp_lname        VARCHAR2(45)NOT NULL,
    emp_dob          DATE NOT NULL,
    emp_jb           VARCHAR2(40),
    store_no   	     NUMBER(8,0)
);

CREATE TABLE product (
    prod_id       NUMBER(8,0),
    prod_name     VARCHAR2(70) NOT NULL,
    prod_desc     VARCHAR2(450),
    prod_price    NUMBER NOT NULL,
    prod_qty      NUMBER NOT NULL,
    prod_mfr      VARCHAR2(90),
    store_no      NUMBER(8,0),
    prod_cat_no   NUMBER(8,0)
);

CREATE TABLE product_category (
    prod_cat_no     NUMBER(8,0),
    prod_cat_name   VARCHAR2(45),
    prod_cat_desc   VARCHAR2(200),
    prod_cat_pop    INTEGER /* product popularity on a scale of 1-10; out-of-scope for now */
);


CREATE TABLE sale (
    sale_no       NUMBER(8,0),
    sale_total    NUMBER NOT NULL,
    prod_id       NUMBER(8,0),
    store_no      NUMBER(8,0),
    item_qty      NUMBER NOT NULL, /* quantity of individual products */
    cust_no       NUMBER(8,0),
    emp_id        NUMBER(8,0)
);


CREATE TABLE musicstore (
    store_no     INTEGER,
    store_name   VARCHAR2(40) NOT NULL,
    store_loc    VARCHAR2(65),
    store_hrs    VARCHAR2(40)
);



/* Alter and Constraint statements */
ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( cust_no );
ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( emp_id );
ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( prod_id );
ALTER TABLE product_category ADD CHECK ( prod_cat_pop BETWEEN 1 AND 10 );
ALTER TABLE product_category ADD CONSTRAINT product_category_pk PRIMARY KEY ( prod_cat_no );
ALTER TABLE sale ADD CONSTRAINT sale_pk PRIMARY KEY ( sale_no );
ALTER TABLE musicstore ADD CONSTRAINT store_pk PRIMARY KEY ( store_no );

/* Table employee */
ALTER TABLE employee
    ADD CONSTRAINT employee_store_fk FOREIGN KEY ( store_no )
        REFERENCES musicstore ( store_no )
    NOT DEFERRABLE;

/* Table product */
ALTER TABLE product
    ADD CONSTRAINT product_category_fk FOREIGN KEY ( prod_cat_no )
        REFERENCES product_category ( prod_cat_no )
    NOT DEFERRABLE;

ALTER TABLE product
    ADD CONSTRAINT product_store_fk FOREIGN KEY ( store_no )
        REFERENCES musicstore ( store_no )
    NOT DEFERRABLE;

/* Table sale */
ALTER TABLE sale
    ADD CONSTRAINT sale_customer_fk FOREIGN KEY ( cust_no )
        REFERENCES customer ( cust_no )
    NOT DEFERRABLE;

ALTER TABLE sale
    ADD CONSTRAINT sale_employee_fk FOREIGN KEY ( emp_id )
        REFERENCES employee ( emp_id )
    NOT DEFERRABLE;

/*Create Indexes*/
CREATE INDEX StoreEmp_fk
ON employee (store_no);

CREATE INDEX AvailProd_fk
ON product (store_no);

CREATE INDEX InProdCat_fk
ON product (prod_cat_no);

CREATE INDEX StoreSales_fk
ON sale (store_no);

CREATE INDEX ProdSales_fk
ON sale (prod_id);

CREATE INDEX EmplSales_fk
ON sale (emp_id);

CREATE INDEX TpCust_fk
ON sale (cust_no);

/* view of employee sales by product - used to identify top performers */
CREATE OR REPLACE VIEW empl_prod_sales AS
SELECT c.prod_id, a.prod_name, a.prod_price, c.emp_id, b.emp_fname, b.emp_lname, c.sale_no, c.item_qty
FROM product a, employee b, sale c 
WHERE a.prod_id=c.prod_id AND b.emp_id=c.emp_id;

/* view of product inventory at local store - used to identify inventory needed or inventory that can be shipped to other stores*/
CREATE OR REPLACE VIEW local_prod_qty AS
SELECT store_no, prod_id, prod_name, prod_qty
FROM product;

/* drop sequences */
DROP SEQUENCE cust_no_seq;
DROP SEQUENCE emp_id_seq;
DROP SEQUENCE prod_id_seq;
DROP SEQUENCE prod_cat_no_seq;
DROP SEQUENCE sale_no_seq;
DROP SEQUENCE store_no_seq;

/* create sequences */
CREATE SEQUENCE cust_no_seq
INCREMENT BY 1
START WITH 101
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE emp_id_seq
INCREMENT BY 1
START WITH 201
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE prod_id_seq
INCREMENT BY 1
START WITH 1000
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE prod_cat_no_seq
INCREMENT BY 1
START WITH 500
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE sale_no_seq
INCREMENT BY 1
START WITH 727
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE store_no_seq
INCREMENT BY 1
START WITH 001
NOMAXVALUE
MINVALUE 1
NOCYCLE
NOCACHE;

/* trigger for low product qty - identifies when quantities are low */
CREATE OR REPLACE TRIGGER prod_trig
AFTER UPDATE of PROD_QTY on product
FOR EACH ROW
WHEN (new.prod_qty >= 5)
BEGIN 
dbms_output.put_line ('Quantity is low');
END;
/

/* trigger for update product qty - identifies when a quantity changes */
CREATE OR REPLACE TRIGGER qty_change_trig
AFTER UPDATE of PROD_QTY on product
FOR EACH ROW
BEGIN 
dbms_output.put_line ('Quantity has changed');
END;
/

/* Notifies that a new product has been entered into the db */
CREATE OR REPLACE TRIGGER new_prod
BEFORE INSERT on product
BEGIN
dbms_output.put_line ('A new product is here');
END;
/

/* data dictionary query */
SELECT object_name, object_type FROM USER_OBJECTS;


