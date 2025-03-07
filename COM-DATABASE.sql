CREATE SCHEMA HR;

USE HR;

CREATE TABLE regions (region_id INT NOT NULL,region_name VARCHAR(25),PRIMARY KEY (region_id));

CREATE TABLE countries (country_id CHAR(2) NOT NULL,country_name VARCHAR(40),region_id INT NOT NULL,PRIMARY KEY (country_id));

CREATE TABLE locations (location_id INT NOT NULL AUTO_INCREMENT,street_address VARCHAR(40),postal_code VARCHAR(12),city VARCHAR(30) NOT NULL,state_province VARCHAR(25),country_id CHAR(2) NOT NULL,PRIMARY KEY (location_id));

CREATE TABLE departments (department_id INT NOT NULL,department_name VARCHAR(30) NOT NULL,dept_head_employee_id  INT ,location_id INT,PRIMARY KEY (department_id));

CREATE TABLE jobs (job_id VARCHAR(10) NOT NULL,job_title VARCHAR(35) NOT NULL,min_salary FLOAT,max_salary FLOAT,PRIMARY KEY (job_id));

CREATE TABLE employees (employee_id INT NOT NULL,first_name VARCHAR(20),last_name VARCHAR(25) NOT NULL,email VARCHAR(25) NOT NULL,phone_number VARCHAR(20),hire_date DATE NOT NULL,job_id VARCHAR(10) NOT NULL,salary FLOAT NOT NULL,commission_pct FLOAT,manager_id INT,department_id INT,PRIMARY KEY (employee_id));

CREATE TABLE job_history (employee_id INT NOT NULL,start_date DATE NOT NULL,end_date DATE NOT NULL,job_id VARCHAR(10) NOT NULL,PRIMARY KEY (employee_id, start_date));

INSERT INTO regions VALUES (1,'EUROPE'),(2,'AMERICA'),(3,'ASIA'),(4,'MIDDLE EAST AND AFRICA');

INSERT INTO countries VALUES ('IT', 'Italy', 1), ('JP', 'Japan', 3), ('US', 'United States of America', 2), ('CA', 'Canada', 2), ('CN', 'China', 3), ('IN', 'India', 3), ('AU', 'Australia', 3), ('ZW', 'Zimbabwe', 4), ('SG', 'Singapore', 3), ('UK', 'United Kingdom', 1), ('FR', 'France', 1), ('DE', 'Germany', 1), ('ZM', 'Zambia', 4), ('EG', 'Egypt', 4), ('BR', 'Brazil', 2), ('CH', 'Switzerland', 1), ('NL', 'Netherlands', 1), ('MX', 'Mexico', 2), ('KW', 'Kuwait', 4), ('IL', 'Israel', 4), ('DK', 'Denmark', 1), ('HK', 'HongKong', 3), ('NG', 'Nigeria', 4), ('AR', 'Argentina', 2), ('BE', 'Belgium', 1);


SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO departments VALUES (10, 'Administration', 200, 1700), (20, 'Marketing', 201, 1800), (30, 'Purchasing', 114, 1700), (40, 'Human Resources', 203, 2400), (50, 'Shipping', 121, 1500), (60, 'IT', 103, 1400), (70, 'Public Relations', 204, 2700), (80, 'Sales', 145, 2500), (90, 'Executive', 100, 1700), (100, 'Finance', 108, 1700), (110, 'Accounting', 205, 1700), (120, 'Treasury', NULL, 1700), (130, 'Corporate Tax', NULL, 1700), (140, 'Control And Credit', NULL, 1700), (150, 'Shareholder Services', NULL, 1700), (160, 'Benefits', NULL, 1700), (170, 'Manufacturing', NULL, 1700), (180, 'Construction', NULL, 1700), (190, 'Contracting', NULL, 1700), (200, 'Operations', NULL, 1700), (210, 'IT Support', NULL, 1700), (220, 'NOC', NULL, 1700), (230, 'IT Helpdesk', NULL, 1700), (240, 'Government Sales', NULL, 1700), (250, 'Retail Sales', NULL, 1700), (260, 'Recruiting', NULL, 1700), (270, 'Payroll', NULL, 1700);


SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO jobs VALUES ('AD_PRES', 'President', 20000, 40000), ('AD_VP', 'Administration Vice President', 15000, 30000), ('AD_ASST', 'Administration Assistant', 3000, 6000), ('FI_MGR', 'Finance Manager', 8200, 16000), ('FI_ACCOUNT', 'Accountant', 4200, 9000), ('AC_MGR', 'Accounting Manager', 8200, 16000), ('AC_ACCOUNT', 'Public Accountant', 4200, 9000), ('SA_MAN', 'Sales Manager', 10000, 20000), ('SA_REP', 'Sales Representative', 6000, 12000), ('PU_MAN', 'Purchasing Manager', 8000, 15000), ('PU_CLERK', 'Purchasing Clerk', 2500, 5500), ('ST_MAN', 'Stock Manager', 5500, 8500), ('ST_CLERK', 'Stock Clerk', 2000, 5000), ('SH_CLERK', 'Shipping Clerk', 2500, 5500), ('IT_PROG', 'Programmer', 4000, 10000), ('MK_MAN', 'Marketing Manager', 9000, 15000), ('MK_REP', 'Marketing Representative', 4000, 9000), ('HR_REP', 'Human Resources Representative', 4000, 9000), ('PR_REP', 'Public Relations Representative', 4500, 10500);
                                                                                                                                                                                                                                                                                                     INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', STR_TO_DATE('17-JUN-1987', '%d-%M-%Y'), 'AD_PRES', 24000, NULL, NULL, 90), (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', STR_TO_DATE('21-SEP-1989', '%d-%M-%Y'), 'AD_VP', 17000, NULL, 100, 90), (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', STR_TO_DATE('13-JAN-1993', '%d-%M-%Y'), 'AD_VP', 17000, NULL, 100, 90), (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', STR_TO_DATE('03-JAN-1990', '%d-%M-%Y'), 'IT_PROG', 9000, NULL, 102, 60), (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', STR_TO_DATE('21-MAY-1991', '%d-%M-%Y'), 'IT_PROG', 6000, NULL, 103, 60), (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', STR_TO_DATE('25-JUN-1997', '%d-%M-%Y'), 'IT_PROG', 4800, NULL, 103, 60), (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', STR_TO_DATE('05-FEB-1998', '%d-%M-%Y'), 'IT_PROG', 4800, NULL, 103, 60), (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', STR_TO_DATE('07-FEB-1999', '%d-%M-%Y'), 'IT_PROG', 4200, NULL, 103, 60), (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', STR_TO_DATE('17-AUG-1994', '%d-%M-%Y'), 'FI_MGR', 12000, NULL, 101, 100), (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', STR_TO_DATE('16-AUG-1994', '%d-%M-%Y'), 'FI_ACCOUNT', 9000, NULL, 108, 100), (110, 'John', 'Chen', 'JCHEN', '515.124.4269', STR_TO_DATE('28-SEP-1997', '%d-%M-%Y'), 'FI_ACCOUNT', 8200, NULL, 108, 100), (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', STR_TO_DATE('30-SEP-1997', '%d-%M-%Y'), 'FI_ACCOUNT', 7700, NULL, 108, 100), (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', STR_TO_DATE('07-MAR-1998', '%d-%M-%Y'), 'FI_ACCOUNT', 7800, NULL, 108, 100), (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', STR_TO_DATE('07-DEC-1999', '%d-%M-%Y'), 'FI_ACCOUNT', 6900, NULL, 108, 100), (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', STR_TO_DATE('07-DEC-1994', '%d-%M-%Y'), 'PU_MAN', 11000, NULL, 100, 30), (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', STR_TO_DATE('18-MAY-1995', '%d-%M-%Y'), 'PU_CLERK', 3100, NULL, 114, 30), (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', STR_TO_DATE('24-DEC-1997', '%d-%M-%Y'), 'PU_CLERK', 2900, NULL, 114, 30), (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', STR_TO_DATE('24-JUL-1997', '%d-%M-%Y'), 'PU_CLERK', 2800, NULL, 114, 30), (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', STR_TO_DATE('15-NOV-1998', '%d-%M-%Y'), 'PU_CLERK', 2600, NULL, 114, 30), (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', STR_TO_DATE('10-AUG-1999', '%d-%M-%Y'), 'PU_CLERK', 2500, NULL, 114, 30), (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', STR_TO_DATE('18-JUL-1996', '%d-%M-%Y'), 'ST_MAN', 8000, NULL, 100, 50), (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', STR_TO_DATE('10-APR-1997', '%d-%M-%Y'), 'ST_MAN', 8200, NULL, 100, 50), (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', STR_TO_DATE('01-MAY-1995', '%d-%M-%Y'), 'ST_MAN', 7900, NULL, 100, 50), (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', STR_TO_DATE('10-OCT-1997', '%d-%M-%Y'), 'ST_MAN', 6500, NULL, 100, 50), (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', STR_TO_DATE('16-NOV-1999', '%d-%M-%Y'), 'ST_MAN', 5800, NULL, 100, 50), (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', STR_TO_DATE('16-JUL-1997', '%d-%M-%Y'), 'ST_CLERK', 3200, NULL, 120, 50), (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', STR_TO_DATE('28-SEP-1998', '%d-%M-%Y'), 'ST_CLERK', 2700, NULL, 120, 50), (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', STR_TO_DATE('14-JAN-1999', '%d-%M-%Y'), 'ST_CLERK', 2400, NULL, 120, 50), (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', STR_TO_DATE('08-MAR-2000', '%d-%M-%Y'), 'ST_CLERK', 2200, NULL, 120, 50), (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', STR_TO_DATE('20-AUG-1997', '%d-%M-%Y'), 'ST_CLERK', 3300, NULL, 121, 50), (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', STR_TO_DATE('30-OCT-1997', '%d-%M-%Y'), 'ST_CLERK', 2800, NULL, 121, 50),(131,'James','Marlow','JAMRLOW','650.124.7234',STR_TO_DATE('16-FEB-1997', '%d-%M-%Y'),'ST_CLERK',2500,NULL,121,50),(132,'TJ','Olson','TJOLSON','650.124.8234',STR_TO_DATE('10-APR-1999', '%d-%M-%Y'),'ST_CLERK',2100,NULL,121,50),(133,'Jason','Mallin','JMALLIN','650.127.1934',STR_TO_DATE('14-JUN-1996', '%d-%M-%Y'),'ST_CLERK',3300,NULL,122,50),(134,'Michael','Rogers','MROGERS','650.127.1834',STR_TO_DATE('26-AUG-1998', '%d-%M-%Y'),'ST_CLERK',2900,NULL,122,50),(135,'Ki','Gee','KGEE','650.127.1734',STR_TO_DATE('12-DEC-1999', '%d-%M-%Y'),'ST_CLERK',2400,NULL,122,50),(136,'Hazel','Philtanker','HPHILTAN','650.127.1634',STR_TO_DATE('06-FEB-2000', '%d-%M-%Y'),'ST_CLERK',2200,NULL,122,50),(137,'Renske','Ladwig','RLADWIG','650.121.1234',STR_TO_DATE('14-JUL-1995', '%d-%M-%Y'),'ST_CLERK',3600,NULL,123,50),(138,'Stephen','Stiles','SSTILES','650.121.2034',STR_TO_DATE('26-OCT-1997', '%d-%M-%Y'),'ST_CLERK',3200,NULL,123,50),(139,'John','Seo','JSEO','650.121.2019',STR_TO_DATE('12-FEB-1998', '%d-%M-%Y'),'ST_CLERK',2700,NULL,123,50),(140,'Joshua','Patel','JPATEL','650.121.1834',STR_TO_DATE('06-APR-1998', '%d-%M-%Y'),'ST_CLERK',2500,NULL,123,50),(141,'Trenna','Rajs','TRAJS','650.121.8009',STR_TO_DATE('17-OCT-1995', '%d-%M-%Y'),'ST_CLERK',3500,NULL,124,50),(142,'Curtis','Davies','CDAVIES','650.121.2994',STR_TO_DATE('29-JAN-1997', '%d-%M-%Y'),'ST_CLERK',3100,NULL,124,50),(143,'Randall','Matos','RMATOS','650.121.2874',STR_TO_DATE('15-MAR-1998', '%d-%M-%Y'),'ST_CLERK',2600,NULL,124,50),(144,'Peter','Vargas','PVARGAS','650.121.2004',STR_TO_DATE('09-JUL-1998', '%d-%M-%Y'),'ST_CLERK',2500,NULL,124,50),(145,'John','Russell','JRUSSEL','011.44.1344.429268',STR_TO_DATE('01-OCT-1996', '%d-%M-%Y'),'SA_MAN',14000,.4,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467268',STR_TO_DATE('05-JAN-1997', '%d-%M-%Y'),'SA_MAN',13500,.3,100,80),(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',STR_TO_DATE('10-MAR-1997', '%d-%M-%Y'),'SA_MAN',12000,.3,100,80),(148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',STR_TO_DATE('15-OCT-1999', '%d-%M-%Y'),'SA_MAN',11000,.3,100,80),(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',STR_TO_DATE('29-JAN-2000', '%d-%M-%Y'),'SA_MAN',10500,.2,100,80),(150,'Peter','Tucker','PTUCKER','011.44.1344.129268',STR_TO_DATE('30-JAN-1997', '%d-%M-%Y'),'SA_REP',10000,.3,145,80),(151,'David','Bernstein','DBERNSTE','011.44.1344.345268',STR_TO_DATE('24-MAR-1997', '%d-%M-%Y'),'SA_REP',9500,.25,145,80),(152,'Peter','Hall','PHALL','011.44.1344.478968',STR_TO_DATE('20-AUG-1997', '%d-%M-%Y'),'SA_REP',9000,.25,145,80),(153,'Christopher','Olsen','COLSEN','011.44.1344.498718',STR_TO_DATE('30-MAR-1998', '%d-%M-%Y'),'SA_REP',8000,.2,145,80),(154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',STR_TO_DATE('09-DEC-1998', '%d-%M-%Y'),'SA_REP',7500,.2,145,80),(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508',STR_TO_DATE('23-NOV-1999', '%d-%M-%Y'),'SA_REP',7000,.15,145,80),(156,'Janette','King','JKING','011.44.1345.429268',STR_TO_DATE('30-JAN-1996', '%d-%M-%Y'),'SA_REP',10000,.35,146,80),(157,'Patrick','Sully','PSULLY','011.44.1345.929268',STR_TO_DATE('04-MAR-1996', '%d-%M-%Y'),'SA_REP',9500,.35,146,80),(158,'Allan','McEwen','AMCEWEN','011.44.1345.829268',STR_TO_DATE('01-AUG-1996', '%d-%M-%Y'),'SA_REP',9000,.35,146,80),(159,'Lindsey','Smith','LSMITH','011.44.1345.729268',STR_TO_DATE('10-MAR-1997', '%d-%M-%Y'),'SA_REP',8000,.3,146,80),(160,'Louise','Doran','LDORAN','011.44.1345.629268',STR_TO_DATE('15-DEC-1997', '%d-%M-%Y'),'SA_REP',7500,.3,146,80),(161,'Sarath','Sewall','SSEWALL','011.44.1345.529268',STR_TO_DATE('03-NOV-1998', '%d-%M-%Y'),'SA_REP',7000,.25,146,80),(162,'Clara','Vishney','CVISHNEY','011.44.1346.129268',STR_TO_DATE('11-NOV-1997', '%d-%M-%Y'),'SA_REP',10500,.25,147,80),(163,'Danielle','Greene','DGREENE','011.44.1346.229268',STR_TO_DATE('19-MAR-1999', '%d-%M-%Y'),'SA_REP',9500,.15,147,80),(164,'Mattea','Marvins','MMARVINS','011.44.1346.329268',STR_TO_DATE('24-JAN-2000', '%d-%M-%Y'),'SA_REP',7200,.10,147,80),(165,'David','Lee','DLEE','011.44.1346.529268',STR_TO_DATE('23-FEB-2000', '%d-%M-%Y'),'SA_REP',6800,.1,147,80),(166,'Sundar','Ande','SANDE','011.44.1346.629268',STR_TO_DATE('24-MAR-2000', '%d-%M-%Y'),'SA_REP',6400,.10,147,80),(167,'Amit','Banda','ABANDA','011.44.1346.729268',STR_TO_DATE('21-APR-2000', '%d-%M-%Y'),'SA_REP',6200,.10,147,80),(168,'Lisa','Ozer','LOZER','011.44.1343.929268',STR_TO_DATE('11-MAR-1997', '%d-%M-%Y'),'SA_REP',11500,.25,148,80),(169,'Harrison','Bloom','HBLOOM','011.44.1343.829268',STR_TO_DATE('23-MAR-1998', '%d-%M-%Y'),'SA_REP',10000,.20,148,80),(170,'Tayler','Fox','TFOX','011.44.1343.729268',STR_TO_DATE('24-JAN-1998', '%d-%M-%Y'),'SA_REP',9600,.20,148,80),(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', STR_TO_DATE('23-FEB-1999', '%d-%M-%Y'), 'SA_REP', 7400, .15, 148, 80), (172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', STR_TO_DATE('24-MAR-1999', '%d-%M-%Y'), 'SA_REP', 7300, .15, 148, 80), (173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', STR_TO_DATE('21-APR-2000', '%d-%M-%Y'), 'SA_REP', 6100, .10, 148, 80), (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', STR_TO_DATE('11-MAY-1996', '%d-%M-%Y'), 'SA_REP', 11000, .30, 149, 80), (175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', STR_TO_DATE('19-MAR-1997', '%d-%M-%Y'), 'SA_REP', 8800, .25, 149, 80), (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', STR_TO_DATE('24-MAR-1998', '%d-%M-%Y'), 'SA_REP', 8600, .20, 149, 80), (177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', STR_TO_DATE('23-APR-1998', '%d-%M-%Y'), 'SA_REP', 8400, .20, 149, 80), (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', STR_TO_DATE('24-MAY-1999', '%d-%M-%Y'), 'SA_REP', 7000, .15, 149, NULL), (179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', STR_TO_DATE('04-JAN-2000', '%d-%M-%Y'), 'SA_REP', 6200, .10, 149, 80), (180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', STR_TO_DATE('24-JAN-1998', '%d-%M-%Y'), 'SH_CLERK', 3200, NULL, 120, 50), (181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', STR_TO_DATE('23-FEB-1998', '%d-%M-%Y'), 'SH_CLERK', 3100, NULL, 120, 50), (182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', STR_TO_DATE('21-JUN-1999', '%d-%M-%Y'), 'SH_CLERK', 2500, NULL, 120, 50), (183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', STR_TO_DATE('03-FEB-2000', '%d-%M-%Y'), 'SH_CLERK', 2800, NULL, 120, 50), (184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', STR_TO_DATE('27-JAN-1996', '%d-%M-%Y'), 'SH_CLERK', 4200, NULL, 121, 50), (185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', STR_TO_DATE('20-FEB-1997', '%d-%M-%Y'), 'SH_CLERK', 4100, NULL, 121, 50), (186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', STR_TO_DATE('24-JUN-1998', '%d-%M-%Y'), 'SH_CLERK', 3400, NULL, 121, 50), (187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', STR_TO_DATE('07-FEB-1999', '%d-%M-%Y'), 'SH_CLERK', 3000, NULL, 121, 50), (188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', STR_TO_DATE('14-JUN-1997', '%d-%M-%Y'), 'SH_CLERK', 3800, NULL, 122, 50), (189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', STR_TO_DATE('13-AUG-1997', '%d-%M-%Y'), 'SH_CLERK', 3600, NULL, 122, 50), (190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', STR_TO_DATE('11-JUL-1998', '%d-%M-%Y'), 'SH_CLERK', 2900, NULL, 122, 50), (191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', STR_TO_DATE('19-DEC-1999', '%d-%M-%Y'), 'SH_CLERK', 2500, NULL, 122, 50), (192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', STR_TO_DATE('04-FEB-1996', '%d-%M-%Y'), 'SH_CLERK', 4000, NULL, 123, 50), (193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', STR_TO_DATE('03-MAR-1997', '%d-%M-%Y'), 'SH_CLERK', 3900, NULL, 123, 50), (194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', STR_TO_DATE('01-JUL-1998', '%d-%M-%Y'), 'SH_CLERK', 3200, NULL, 123, 50), (195, 'Vance', 'Jones', 'VJONES', '650.501.4876', STR_TO_DATE('17-MAR-1999', '%d-%M-%Y'), 'SH_CLERK', 2800, NULL, 123, 50),(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', STR_TO_DATE('24-APR-1998', '%d-%M-%Y'), 'SH_CLERK', 3100, NULL, 124, 50), (197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', STR_TO_DATE('23-MAY-1998', '%d-%M-%Y'), 'SH_CLERK', 3000, NULL, 124, 50), (198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', STR_TO_DATE('21-JUN-1999', '%d-%M-%Y'), 'SH_CLERK', 2600, NULL, 124, 50), (199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', STR_TO_DATE('13-JAN-2000', '%d-%M-%Y'), 'SH_CLERK', 2600, NULL, 124, 50), (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', STR_TO_DATE('17-SEP-1987', '%d-%M-%Y'), 'AD_ASST', 4400, NULL, 101, 10), (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', STR_TO_DATE('17-FEB-1996', '%d-%M-%Y'), 'MK_MAN', 13000, NULL, 100, 20), (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', STR_TO_DATE('17-AUG-1997', '%d-%M-%Y'), 'MK_REP', 6000, NULL, 201, 20), (203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', STR_TO_DATE('07-JUN-1994', '%d-%M-%Y'), 'HR_REP', 6500, NULL, 101, 40), (204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', STR_TO_DATE('07-JUN-1994', '%d-%M-%Y'), 'PR_REP', 10000, NULL, 101, 70), (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', STR_TO_DATE('07-JUN-1994', '%d-%M-%Y'), 'AC_MGR', 12000, NULL, 101, 110), (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', STR_TO_DATE('07-JUN-1994', '%d-%M-%Y'), 'AC_ACCOUNT', 8300, NULL, 205, 110);
INSERT INTO job_history VALUES (102, STR_TO_DATE('13-Jan-1993', '%d-%M-%Y'), STR_TO_DATE('24-Jul-1998', '%d-%M-%Y'), 'IT_PROG'), (101, STR_TO_DATE('21-Sep-1989', '%d-%M-%Y'), STR_TO_DATE('27-Oct-1993', '%d-%M-%Y'), 'AC_ACCOUNT'), (101, STR_TO_DATE('28-Oct-1993','%d-%M-%Y'), STR_TO_DATE('15-Mar-1997','%d-%M-%Y'), 'AC_MGR'), (201, STR_TO_DATE('27-Feb-1996','%d-%M-%Y'), STR_TO_DATE('19-Dec-1999','%d-%M-%Y'), 'MK_REP'), (114, STR_TO_DATE('24-Mar-1998','%d-%M-%Y'), STR_TO_DATE('31-Dec-1999','%d-%M-%Y'), 'ST_CLERK'), (122, STR_TO_DATE('01-Jan-1999','%d-%M-%Y'), STR_TO_DATE('31-Dec-1999','%d-%M-%Y'), 'ST_CLERK'), (200, STR_TO_DATE('17-Sep-1987','%d-%M-%Y'), STR_TO_DATE('17-Jun-1993','%d-%M-%Y'), 'AD_ASST'), (176, STR_TO_DATE('24-Mar-1998','%d-%M-%Y'), STR_TO_DATE('31-Dec-1998','%d-%M-%Y'), 'SA_REP'), (176, STR_TO_DATE('01-Jan-1999','%d-%M-%Y'), STR_TO_DATE('31-Dec-1999','%d-%M-%Y'), 'SA_MAN'), (200, STR_TO_DATE('01-Jul-1994','%d-%M-%Y'), STR_TO_DATE('31-Dec-1998','%d-%M-%Y'), 'AC_ACCOUNT');

ALTER TABLE countries ADD FOREIGN KEY (region_id) REFERENCES regions(region_id);
ALTER TABLE locations ADD FOREIGN KEY (country_id) REFERENCES countries(country_id);
ALTER TABLE departments ADD FOREIGN KEY (location_id) REFERENCES locations(location_id);
ALTER TABLE employees ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id);
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE employees ADD FOREIGN KEY (manager_id) REFERENCES employees(employee_id);
ALTER TABLE departments ADD FOREIGN KEY (dept_head_employee_id ) REFERENCES employees (employee_id);
ALTER TABLE job_history ADD FOREIGN KEY (employee_id) REFERENCES employees(employee_id);
ALTER TABLE job_history ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id);

#QUERIES-----------------------------------------------------------------------------------

# Retrieve all details of employees. 
SELECT * FROM employees;

#Display the first name, last name, and email of all employees.
SELECT first_name, last_name, email FROM employees;

#Retrieve the distinct job titles from the jobs table.
SELECT DISTINCT job_title FROM jobs;

#Find the total number of employees in the company. 
SELECT COUNT(*) AS total_employees FROM employees;

#Retrieve the employees who were hired after January 1, 2015. 
SELECT * FROM employees WHERE hire_date > STR_TO_DATE('01-Jan-2015', '%d-%M-%Y');

#List all employees who have a salary greater than 5000. 
SELECT * FROM employees WHERE salary > 5000;

#Retrieve employees with job titles containing the word ‘Manager.’ 
SELECT * FROM employees WHERE job_id LIKE '%MAN%';

#Retrieve all employees whose first name starts with ‘A’ and ends with ‘n.’ 
SELECT * FROM employees WHERE first_name LIKE 'A%n';

#Display the employees who do not have a commission. 
SELECT * FROM employees WHERE commission_pct IS NULL;

#Retrieve the top 5 highest-paid employees. 
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

# Find the average salary of all employees. 
SELECT AVG(salary) AS average_salary FROM employees;

#Retrieve the total number of employees working in each department.
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

# Display the employee's first name and the length of their first name. 
SELECT first_name, LENGTH(first_name) AS name_length FROM employees;

#Convert the hire_date of employees to display only the year. 
SELECT first_name, last_name, YEAR(hire_date) AS hire_year FROM employees;

#Retrieve the minimum and maximum salary for each job title. 
SELECT job_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees
GROUP BY job_id;

# Retrieve the employee names along with their department names. 
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

# List the employees along with their job titles and the location of their department.
SELECT e.first_name, e.last_name, j.job_title, l.city, l.state_province
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

# Retrieve the department names along with the count of employees in each department.
SELECT d.department_name, COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

# Find employees who have the same job as their manager. 
SELECT e.first_name, e.last_name, e.job_id
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.job_id = m.job_id;

# Display the names of employees who worked in different jobs in the past (use 
##job_history).
SELECT DISTINCT e.first_name, e.last_name
FROM employees e
JOIN job_history jh ON e.employee_id = jh.employee_id;
