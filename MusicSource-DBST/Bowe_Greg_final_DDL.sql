/* Bowe_Greg Final DDL */
/* Question 1 */


set echo on;
set serveroutput on;
set linesize 150;
set pagesize 30;

DROP TABLE ORDER_LINE;
DROP TABLE ORDERS;
DROP TABLE PRODUCT;
DROP TABLE EMPLOYEE;
DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER
 (CUSTNO VARCHAR2(8)NOT NULL/*primary key */
 ,CUSTFIRSTNAME VARCHAR2(20)NOT NULL
 ,CUSTLASTNAME VARCHAR2(30)NOT NULL
 ,CUSTSTREET VARCHAR2(50)
 ,CUSTCITY VARCHAR2(30)
 ,CUSTSTATE VARCHAR2(2)
 ,CUSTZIP VARCHAR2(10)
 ,CUSTBAL NUMBER(12,2) 
 );
/* A Customer may place many orders; an order is placed by one and only one customer. */

 CREATE TABLE EMPLOYEE
(EMPNO VARCHAR2(8)NOT NULL /* primary key */
,EMPFIRSTNAME VARCHAR2(20)NOT NULL 
,EMPLASTNAME VARCHAR2(30)NOT NULL 
,EMPPHONE VARCHAR2(15)
,EMPEMAIL VARCHAR2(50)NOT NULL  /* unique */ 
,SUPEMPNO VARCHAR2(8)
,EMPCOMMRATE NUMBER(3,3)
);
/* An employee may receive commission on one or many orders. One or many orders may be attributed to 
one employee*/

 CREATE TABLE PRODUCT 
 (PRODNO VARCHAR2(8)NOT NULL  /* primary key */
 ,PRODNAME VARCHAR2(50)NOT NULL 
 ,PRODMFG VARCHAR2(20)NOT NULL 
 ,PRODQOH NUMBER(*,0)
 ,PRODPRICE NUMBER(12,2)
 ,PRODNEXTSHIPDATE DATE
 );
/* a product is added to zero, one, or many order lines. An order line contains zero or one product */

CREATE TABLE ORDERS
 (ORDNO VARCHAR2(8)NOT NULL  /* primary key */
 ,ORDDATE DATE NOT NULL 
 ,CUSTNO VARCHAR2(8)NOT NULL  /*foreign key from Customer table */
 ,EMPNO VARCHAR2(8) /* foreign key from Employee table */
 ,ORDNAME VARCHAR2(50)
 ,ORDSTREET VARCHAR2(50)
 ,ORDCITY VARCHAR2(30)
 ,ORDSTATE VARCHAR2(2) 
 ,ORDZIP VARCHAR2(10) 
 );
/* An order must be one be placed by a customer. A customer can on or many orders*/
/* An order may be one be attributed to one and only one employee. 
An employee may receive commission on one or many orders*/

 CREATE TABLE ORDER_LINE
 (ORDNO VARCHAR2(8)NOT NULL  /* primary and foreign key - Orders table */
 ,PRODNO VARCHAR2(8)NOT NULL  /* primary and foreign key - Product table */
 ,QTY NUMBER(*,0)
 );
/*An order line includes one and only one product. A product may belong to one or many order lines. */
/* One or many order lines belong to one an only one order. An order includes one or many order lines.*/

/* Alter and Constraint statements */
ALTER TABLE CUSTOMER ADD CONSTRAINT CUSTOMER_PK PRIMARY KEY ( CUSTNO );
ALTER TABLE EMPLOYEE ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY ( EMPNO );
ALTER TABLE PRODUCT ADD CONSTRAINT PRODUCT_PK PRIMARY KEY ( PRODNO );
ALTER TABLE ORDERS ADD CONSTRAINT ORDERS_PK PRIMARY KEY ( ORDNO ); 
ALTER TABLE ORDER_LINE ADD CONSTRAINT ORDNO_PRODNO_PK PRIMARY KEY (ORDNO, PRODNO);
ALTER TABLE CUSTOMER 
    ADD CONSTRAINT CUSTOMER_FK FOREIGN KEY ( CUSTNO )
        REFERENCES CUSTOMER ( CUSTNO )
NOT DEFERRABLE;

/* a.	Add a new customer John Smith with custono 1 and custzip 23456 */
Insert into CUSTOMER values ('1', 'John', 'Smith', 'My Street', 'My City', 'FL', '23456', 0);
Commit;

UPDATE CUSTOMER 
SET CUSTZIP = '20001' 
WHERE CUSTNO = '1';
/* confirm update: Select * From Customer */

Rollback;
/* confirm update: Select * From Customer */

DELETE FROM CUSTOMER WHERE CUSTNO = '1';
Commit;
