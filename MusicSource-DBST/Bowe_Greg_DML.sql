-- Bowe_Greg_DML
-- University of Maryland University College
-- PROJECT 4 DML Query Statements DBST 651 Fall 2018

set echo on;
set serveroutput on;
set linesize 150;
set pagesize 30;

SET DEFINE OFF
/* Insert data into tables */

/* customer information */
INSERT INTO customer VALUES (cust_no_seq.nextval,'Roger', 'Smith',7275853641,'rogersmith78@aol.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Mary', 'Jones',7272291800,'mjones@aegonusa.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'William', 'Murry',8134239856,'1srchairmurry@gmail.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Alfred', 'Taylor',8133337546,'alfredtaylor@aol.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Tiffany', 'Simpson',57121993245,'simpsontiff@gmail.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Viola', 'Daniels',7031234567,'Violad65@gmail.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Chello', 'Long',5719872341,'mellowchello@yahoo.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Vladimir', 'Ilyich',7275831246,'2ndchairblad@flmusic.org');
INSERT INTO customer VALUES (cust_no_seq.nextval,'Valeria', 'Valarez',2021239976,'vvforever@gmail.com');
INSERT INTO customer VALUES (cust_no_seq.nextval,'June', 'Smalls',2124435566,'smallstolarge@aol.com');

COMMIT;

/* PLEASE NOTE: There are only three music stores in this project */
INSERT INTO musicstore VALUES (store_no_seq.nextval, 'Music Source - Bayview Avenue', '727 N Bayview Avenue', '8am - 10pm M-F, 8am - 6pm Sat');
INSERT INTO musicstore VALUES (store_no_seq.nextval, 'Music Source - Gandy Blvd', '1232 W Gabdy Blvd', '8am - 10pm M-F, 8am - 6pm Sat');
INSERT INTO musicstore VALUES (store_no_seq.nextval, 'Music Source - Central', '121 Central Avenue', '8am - 10pm M-F, 8am - 6pm Sat');

COMMIT;

/* employee information */
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Mike', 'Harris',TO_DATE('01-JAN-1978 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 3);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Josiah', 'Leventhal',TO_DATE('12-JAN-1978 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Store Manager', 1);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Cassandra', 'Mitchel',TO_DATE('30-APR-1997 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Store Manager', 2);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Shri', 'Nepharison',TO_DATE('13-APR-1979 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Store Manager', 3);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Juniper', 'Schmidt',TO_DATE('16-JUN-1981 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 1);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Santiago', 'Perez',TO_DATE('28-JUL-1991 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 1);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Juanita', 'Perez',TO_DATE('18-NOV-1999 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 1);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'John', 'Martin',TO_DATE('07-OCT-1989 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 2);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Julia', 'Rodriguez',TO_DATE('11-SEP-1991 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 2);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Prasantha', 'Miller',TO_DATE('18-AUG-1995 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 2);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Kevin', 'Wallace',TO_DATE('06-FEB-1984 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 3);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Jadzia', 'Patterson',TO_DATE('15-OCT-1971 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'Sales Associate', 3);
INSERT INTO employee VALUES (emp_id_seq.nextval, 'Saul', 'Jacobson',TO_DATE('13-MAR-1965 00:00:00','DD-MON-YYYY HH24:MI:SS'), 'General Manager', 1);

COMMIT;

/* product_category */
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Strings', 'Complete line of strings for orchestral instruments', 9);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Strings Instruments', 'Stringed instruments from violins to violas and everyghing in between', 9);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Bows', 'New and used violin, viola, cello, and base bows', 6);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Bags and Cases', 'Everything you need to protect and carry your instrument', 7);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Percussion', 'Congo, bongo, shackers, blocks, kettle drums and more', 9);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Sheet Music', 'Find all the music you looking for, from Mozart to modern', 2);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Pro Audio', 'Equipment, connectors, compressors, and so on to connect, amplify, and leave te', 9);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Brass', 'Complete line of brass instruments and accessories', 6);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Woodwinds', 'Complete line of woodwinds for all your band and orchestra needs', 8);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Live Sound', 'Digital audio boards and equipment for all performance needs', 9);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Software', 'The latest digital audio mixing and recording software', 8);
INSERT INTO product_category VALUES (prod_cat_no_seq.nextval, 'Basses', 'Complete line of acoustic and electric base guitars', 9);

COMMIT;

/* products */
INSERT INTO product VALUES (prod_id_seq.nextval, '4/4 Size A String Violin Strings','The top choice of violinists for more than 40 years!
These strings have a highly flexible, multi-strand nylon core and cater to artists who feel uncomfortable with steel strings. 
Dominant string deliver tone and response comparable to gut strings, without guts attendant drawbacks.'
,14.2,50,'Thomastik Dominant',1,500);
INSERT INTO product VALUES (prod_id_seq.nextval, '4/4 Size Violin Strings 4/4 Set, Wound E String, Ball End','The top choice of violinists for more than 40 years!
These strings have a highly flexible, multi-strand nylon core and cater to artists who feel uncomfortable with steel strings. Dominant string deliver tone and response comparable to gut strings, without guts attendant drawbacks.'
,64.99,67,'Thomastik Dominant',1,500);
INSERT INTO product VALUES (prod_id_seq.nextval, 'Maple Leaf Strings Master Xu Collection Viola','Top quality viola, finest woods and craftsmanship. 
After selecting the finest tonewoods, the raw materials are air-dried for over a decade before being carved into extraordinary instruments.',6479,5,'Maple Leaf Strings',2,501);
INSERT INTO product VALUES (prod_id_seq.nextval, 'Karl Willhelm Advanced Carbon Fiber Violin Bow 4/4 Size',
'Karl Willhelm Carbon Fiber Violin Bows are well balanced and reasonably priced. They feature genuine horsehair, wire grip, and ebony frog. 
The Karl Willhelm Carbon Fiber Bow is well suited for the student or intermediate musician.'
,139.99,15,'Karl Willhelm',1,500);
INSERT INTO product VALUES (prod_id_seq.nextval, 'G. Henle Verlag Sonatas for Piano and Violin - Volumes I and II',
'Print music',128.95,5,'Thomastik Dominant',1,500);
INSERT INTO product VALUES (prod_id_seq.nextval,'Bam 2011XL Hightech Oblong Violin Case with Pocket','Convenient shape and size.Interior features. 
Total suspension of the instrument on injected foam cushions.
Removable inside accessories pocket. 4 bow holders.',832.00,2,'BAM products',2,503);
INSERT INTO product VALUES (prod_id_seq.nextval, 'Majestic Harmonic Series Timpani - 32 inch','Majestic successfully combines traditional craftsmanship and 
modern technology to emerge as a leader in timpani manufacture.'
,2232.99,2,'Majestic Concert Percussion',2,504);
INSERT INTO product VALUES (prod_id_seq.nextval,'LP Performer Series 3-Piece Conga and Bongo Set with Chrome Hardware',
'Features include Siam oak shells for warm, resonant open tones and sharp slap tones; 
EZ-Curve rims for hand comfort and tucked heads for a classic tone.', 749.99,10,'Latin Percussion',3,504);
INSERT INTO product VALUES (prod_id_seq.nextval,'Pioneer XDJ-RX2 Professional DJ Controller',
'This all-in-one DJ controller features a large, 7 in. dual waveform touchscreen display and a club-standard layout that will be immediately 
familiar to professional DJs all over the world.',
1699.00,5,'Pioneer',3,506);
INSERT INTO product VALUES (prod_id_seq.nextval,'Yamaha YTR-2330 Standard Bb Trumpet Bb Trumpet','The Yamaha YTR-2330 is the latest version of 
Yamahas main student trumpet, an instrument that has assisted in the development of thousands of trumpeters all over the world.',
1377.00,5,'Yamaha',1,507);
INSERT INTO product VALUES (prod_id_seq.nextval,'Selmer BS400 Baritone Saxophone Standard','The Selmer BS400 is Selmers introductory baritone 
saxophone and serves as a replacement to the Selmer BS500 Baritone Saxophone. It features all of the essentials, plus attributes you 
might not expect in a student instrument',5259.00,3,'Selmer',1,508);
INSERT INTO product VALUES (prod_id_seq.nextval,'Godin A5 Ultra Bass Fretless',
'The Godin A5 SA Ultra fretless bass features a solid spruce top, for balanced sound reproduction. The rock maple neck adds plenty of sustain and definition from note to note.'
,1395.00,10,'Godin',1,511);
INSERT INTO product VALUES (prod_id_seq.nextval,'Yamaha SM15V 15 - 2 Way Passive Floor Monitor','Club Series V loudspeakers have crossover networks that 
divide the signal going to the woofer and compression driver are constructed with oversized coils, high voltage capacitors,
  and power resistors designed to provide the best possible sound quality and minimize loss.',409.99,3,'Yamaha',3,509);
INSERT INTO product VALUES (prod_id_seq.nextval,'Steinberg WaveLab Pro 9.5','WaveLab is todays leading mastering and audio editing platform, 
favored by mastering engineers, producers, sound designers, musicians and audio schools alike.',579.99,7,'WaveLab',3,510);

COMMIT;

/* sales  */
INSERT INTO sale VALUES (sale_no_seq.nextval, 589.00, 1002, 3, 1, 102, 201);
INSERT INTO sale VALUES (sale_no_seq.nextval, 1400.00, 1006, 1, 1, 103, 205);
INSERT INTO sale VALUES (sale_no_seq.nextval, 45.50, 1008, 2, 3, 104, 208);
INSERT INTO sale VALUES (sale_no_seq.nextval, 750.00, 1004, 3, 1, 105, 201);
INSERT INTO sale VALUES (sale_no_seq.nextval, 1750.00, 1011, 1, 1, 106, 206);
INSERT INTO sale VALUES (sale_no_seq.nextval, 260.00, 1012, 2, 1, 107, 208);
INSERT INTO sale VALUES (sale_no_seq.nextval, 66.01, 1001, 1, 1, 108, 205);
INSERT INTO sale VALUES (sale_no_seq.nextval, 1380.00, 1007, 2, 1, 109, 208);
INSERT INTO sale VALUES (sale_no_seq.nextval, 840.00, 1008, 2, 1, 102, 203);
INSERT INTO sale VALUES (sale_no_seq.nextval, 2238.00, 1003, 1, 1, 101, 207);
INSERT INTO sale VALUES (sale_no_seq.nextval, 756.00, 1004, 3, 1, 105, 201);
INSERT INTO sale VALUES (sale_no_seq.nextval, 732.00, 1003, 2, 1, 105, 201);
COMMIT;

/* 12 Basic Queries */

/* 1. SELECT all columns and rows FROM product table */
SELECT * FROM product;

/* 2. SELECT five columns and all rows FROM one table */
SELECT prod_id, prod_name, prod_desc, prod_mfr, prod_cat_no FROM product;

/* 3. SELECT all columns and all rows FROM one view */
SELECT * FROM local_prod_qty;

/* 4. Use a join ON two tables, SELECT all columns and rows FROM the tables without the use of Cartesian product */ 
SELECT emp_id, emp_fname, emp_lname, emp_dob, emp_jb, e.store_no, store_name, store_loc, store_hrs
FROM employee e, musicstore s
WHERE e.store_no = s.store_no;

/* 5. SELECT and order data FROM a table */
SELECT * FROM customer ORDER BY cust_lname;

/* 6. Using a join ON 3 tables, SELECT 5 columns FROM the 3 tables and limit output to 10 rows */
SELECT product.prod_id, product.prod_name, product_category.prod_cat_no, product_category.prod_cat_name, musicstore.store_no
FROM (product INNER JOIN product_category ON product.prod_cat_no = product_category.prod_cat_no) 
INNER JOIN musicstore ON musicstore.store_no = product.store_no 
WHERE rownum <11;

/* 7. SELECT distinct rows using joins ON 3 tables */
SELECT product.prod_id, product.prod_name, product_category.prod_cat_no, product_category.prod_cat_name, musicstore.store_no
FROM (product INNER JOIN product_category ON product.prod_cat_no = product_category.prod_cat_no) 
INNER JOIN musicstore ON musicstore.store_no = product.store_no 
WHERE product_category.prod_cat_name = 'Strings';

/* 8. Use GROUP BY and HAVING in a SELECT statement using one or more tables */
SELECT prod_mfr, count(prod_id)
FROM product
GROUP BY prod_mfr
HAVING count(prod_id)>1;

/* 9. Use IN clause to SELECT data FROM one or more tables */
SELECT * FROM sale WHERE store_no in ('2');

/* 10. SELECT length of one column FROM one table using LENGTH function */
SELECT prod_name, length(prod_desc) FROM product;

/* 11. Delete ON record FROM one table - use SELECT statements to demonstrate before/after - then rollback */
SELECT * FROM customer WHERE cust_no = '110';
DELETE FROM customer WHERE cust_no = '110';
SELECT * FROM customer WHERE cust_no = '110';

ROLLBACK;

/* 12. Update one record FROM table - show before, after, then rollback */
SELECT * FROM employee WHERE emp_lname = 'Harris';
UPDATE employee SET emp_lname = 'Harrison'
WHERE emp_lname = 'Harris';
SELECT * FROM employee WHERE emp_lname = 'Harrison';

ROLLBACK;

/* 8 Advanced Queries */
/* 1. List store with the highest number of sales */
SELECT m.store_name, s.store_no, sum(s.sale_total) "Total Sales per Category"
FROM musicstore m, sale s
WHERE m.store_no = s.store_no
GROUP BY s.store_no, m.store_name
ORDER BY "Total Sales per Category" DESC;

/* 2. list employees who sold the most products */
SELECT e.emp_fname, e.emp_lname, m.store_name,  sum(s.sale_total) "Total Sales by Employee"
FROM employee e, musicstore m, sale s
WHERE e.emp_id = s.emp_id
AND m.store_no = s.store_no
GROUP BY e.emp_fname, e.emp_lname, m.store_name
ORDER BY "Total Sales by Employee" DESC;

/* 3. list most popular products in prod category 'String' */
SELECT p.prod_name, c.prod_cat_name, count(s.prod_id) "Number Sold"
FROM product p, product_category c, sale s
WHERE p.prod_cat_no = c.prod_cat_no
AND p.prod_id = s.prod_id
AND c.prod_cat_name = 'Strings'
GROUP BY c.prod_cat_name, p.prod_name
ORDER BY "Number Sold" DESC;

/* 4. Identify customers who spent more than 500 during a sale  */
SELECT c.cust_fname, c.cust_lname, p.prod_name, count(s.item_qty) AS qty, sum(s.sale_total)as sum
FROM customer c, product p, sale s
WHERE c.cust_no = s.cust_no
AND p.prod_id = s.prod_id
AND s.sale_total > 500
GROUP BY c.cust_fname, c.cust_lname, p.prod_name
ORDER BY qty, sum DESC;

/* 5. list employees born after 1980 but before 1990 */
SELECT * FROM employee 
WHERE emp_dob > TO_DATE('31-DEC-1979', 'DD-MM-YY')
AND emp_dob<TO_DATE ('01-JAN-1990', 'DD-MM-YY');

/* 6. List all sales associates who made a sale and work in store 3 */
SELECT e.emp_fname, e.emp_lname, l.store_no, s.sale_no
FROM employee e, musicstore l, sale s
WHERE e.emp_id in (SELECT s.emp_id FROM sale WHERE l.store_no IN (SELECT s.store_no FROM musicstore 
WHERE s.store_no = 3));

/* 7. List all products by category, name, manufacturer, price, quantity, at each store*/
SELECT s.store_name AS "Store", p.prod_name AS "Product", c.prod_cat_name AS "Category", p.prod_mfr AS "MFR", p.prod_qty AS "QTY", p.prod_price AS "Price"
FROM product_category c, product p, musicstore s
WHERE c.prod_cat_no = p.prod_cat_no
AND p.store_no = s.store_no
ORDER BY s.store_name;

/* 8. List employees at each store that have not made any sales */
SELECT emp_id, emp_fname, emp_lname
FROM employee
WHERE NOT EXISTS (
        SELECT emp_id FROM sale
        WHERE sale.emp_id = employee.emp_id);



