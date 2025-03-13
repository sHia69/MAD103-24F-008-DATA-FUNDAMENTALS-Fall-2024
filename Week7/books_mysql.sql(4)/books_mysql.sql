-- Table 1;
CREATE TABLE authors
  (
  au_id    CHAR(3)     NOT NULL,
  au_fname VARCHAR(15) NOT NULL,
  au_lname VARCHAR(15) NOT NULL,
  phone    VARCHAR(12)         ,
  address  VARCHAR(20)         ,
  city     VARCHAR(15)         ,
  state    CHAR(2)             ,
  zip      CHAR(5)             ,
  CONSTRAINT pk_authors PRIMARY KEY (au_id)
  );
INSERT INTO authors VALUES('A01','Sarah','Buchman','718-496-7223','75 West 205 St','Bronx','NY','10468');
INSERT INTO authors VALUES('A02','Wendy','Heydemark','303-986-7020','2922 Baseline Rd','Boulder','CO','80303');
INSERT INTO authors VALUES('A03','Hallie','Hull','415-549-4278','3800 Waldo Ave, #14F','San Francisco','CA','94123');
INSERT INTO authors VALUES('A04','Klee','Hull','415-549-4278','3800 Waldo Ave, #14F','San Francisco','CA','94123');
INSERT INTO authors VALUES('A05','Christian','Kells','212-771-4680','114 Horatio St','New York','NY','10014');
INSERT INTO authors VALUES('A06','','Kellsey','650-836-7128','390 Serra Mall','Palo Alto','CA','94305');
INSERT INTO authors VALUES('A07','Paddy','O''Furniture','941-925-0752','1442 Main St','Sarasota','FL','34236');


-- Table 2;
CREATE TABLE publishers
  (
  pub_id   CHAR(3)     NOT NULL,
  pub_name VARCHAR(20) NOT NULL,
  city     VARCHAR(15) NOT NULL,
  state    CHAR(2)             ,
  country  VARCHAR(15) NOT NULL,
  CONSTRAINT pk_publishers PRIMARY KEY (pub_id)
  );
INSERT INTO publishers VALUES('P01','Abatis Publishers','New York','NY','USA');
INSERT INTO publishers VALUES('P02','Core Dump Books','San Francisco','CA','USA');
INSERT INTO publishers VALUES('P03','Schadenfreude Press','Hamburg',NULL,'Germany');
INSERT INTO publishers VALUES('P04','Tenterhooks Press','Berkeley','CA','USA');


-- Table 3;
CREATE TABLE titles
  (
  title_id   CHAR(3)      NOT NULL,
  title_name VARCHAR(40)  NOT NULL,
  type       VARCHAR(10)          ,
  pub_id     CHAR(3)      NOT NULL,
  pages      INTEGER              ,
  price      DECIMAL(5,2)         ,
  sales      INTEGER              ,
  pubdate    DATE                 ,
  contract   SMALLINT     NOT NULL,
  CONSTRAINT pk_titles PRIMARY KEY (title_id),
  CONSTRAINT fk_publisher FOREIGN KEY (pub_id) REFERENCES publishers (pub_id)
    
  );
INSERT INTO titles VALUES('T01','1977!','history','P01',107,21.99,566,DATE '2000-08-01',1);
INSERT INTO titles VALUES('T02','200 Years of German Humor','history','P03',14,19.95,9566,DATE '1998-04-01',1);
INSERT INTO titles VALUES('T03','Ask Your System Administrator','computer','P02',1226,39.95,25667,DATE '2000-09-01',1);
INSERT INTO titles VALUES('T04','But I Did It Unconsciously','psychology','P04',510,12.99,13001,DATE '1999-05-31',1);
INSERT INTO titles VALUES('T05','Exchange of Platitudes','psychology','P04',201,6.95,201440,DATE '2001-01-01',1);
INSERT INTO titles VALUES('T06','How About Never?','biography','P01',473,19.95,11320,DATE '2000-07-31',1);
INSERT INTO titles VALUES('T07','I Blame My Mother','biography','P03',333,23.95,1500200,DATE '1999-10-01',1);
INSERT INTO titles VALUES('T08','Just Wait Until After School','children','P04',86,10.00,4095,DATE '2001-06-01',1);
INSERT INTO titles VALUES('T09','Kiss My Boo-Boo','children','P04',22,13.95,5000,DATE '2002-05-31',1);
INSERT INTO titles VALUES('T10','Not Without My Faberge Egg','biography','P01',NULL,NULL,NULL,NULL,0);
INSERT INTO titles VALUES('T11','Perhaps It''s a Glandular Problem','psychology','P04',826,7.99,94123,DATE '2000-11-30',1);
INSERT INTO titles VALUES('T12','Spontaneous, Not Annoying','biography','P01',507,12.99,100001,DATE '2000-08-31',1);
INSERT INTO titles VALUES('T13','What Are The Civilian Applications?','history','P03',802,29.99,10467,DATE '1999-05-31',1);


-- table 4;
CREATE TABLE title_authors
  (
  title_id      CHAR(3)      NOT NULL,
  au_id         CHAR(3)      NOT NULL,
  au_order      SMALLINT     NOT NULL,
  royalty_share DECIMAL(5,2) NOT NULL,
  CONSTRAINT pk_title_authors PRIMARY KEY (title_id, au_id),
  CONSTRAINT fk_title_id FOREIGN KEY (title_id) REFERENCES titles (title_id),
  CONSTRAINT fk_author_id FOREIGN KEY (au_id) REFERENCES authors (au_id)
  );
INSERT INTO title_authors VALUES('T01','A01',1,1.0);
INSERT INTO title_authors VALUES('T02','A01',1,1.0);
INSERT INTO title_authors VALUES('T03','A05',1,1.0);
INSERT INTO title_authors VALUES('T04','A03',1,0.6);
INSERT INTO title_authors VALUES('T04','A04',2,0.4);
INSERT INTO title_authors VALUES('T05','A04',1,1.0);
INSERT INTO title_authors VALUES('T06','A02',1,1.0);
INSERT INTO title_authors VALUES('T07','A02',1,0.5);
INSERT INTO title_authors VALUES('T07','A04',2,0.5);
INSERT INTO title_authors VALUES('T08','A06',1,1.0);
INSERT INTO title_authors VALUES('T09','A06',1,1.0);
INSERT INTO title_authors VALUES('T10','A02',1,1.0);
INSERT INTO title_authors VALUES('T11','A03',2,0.3);
INSERT INTO title_authors VALUES('T11','A04',3,0.3);
INSERT INTO title_authors VALUES('T11','A06',1,0.4);
INSERT INTO title_authors VALUES('T12','A02',1,1.0);
INSERT INTO title_authors VALUES('T13','A01',1,1.0);


-- table 5;
CREATE TABLE royalties
  (
  royalties_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title_id     CHAR(3)      NOT NULL,
  advance      DECIMAL(9,2)         ,
  royalty_rate DECIMAL(5,2)         ,
  CONSTRAINT fk_titles FOREIGN KEY (title_id) REFERENCES titles (title_id)
  );
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T01',10000,0.05);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T02',1000,0.06);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T03',15000,0.07);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T04',20000,0.08);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T05',100000,0.09);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T06',20000,0.08);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T07',1000000,0.11);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T08',0,0.04);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T09',0,0.05);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T10',NULL,NULL);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T11',100000,0.07);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T12',50000,0.09);
INSERT INTO royalties (title_id, advance, royalty_rate) VALUES('T13',20000,0.06);


-- table 6;
CREATE TABLE telephones (
  phone_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  au_id    CHAR(3)  NOT NULL,
  tel_type CHAR(1)  NOT NULL,
  tel_no   CHAR(12) NOT NULL,
  FOREIGN KEY (au_id) REFERENCES authors (au_id)    
  );
INSERT INTO telephones (au_id, tel_type, tel_no) VALUES('A01','H','111-111-1111');
INSERT INTO telephones (au_id, tel_type, tel_no)VALUES('A01','W','222-222-2222');
INSERT INTO telephones (au_id, tel_type, tel_no)VALUES('A02','W','333-333-3333');
INSERT INTO telephones (au_id, tel_type, tel_no)VALUES('A04','H','444-444-4444');
INSERT INTO telephones (au_id, tel_type, tel_no)VALUES('A04','W','555-555-5555');
INSERT INTO telephones (au_id, tel_type, tel_no)VALUES('A05','H','666-666-6666');




-- table 7;
CREATE TABLE pub_employees (
  emp_id   CHAR(3)     NOT NULL PRIMARY KEY,
  emp_name VARCHAR(20) NOT NULL,
  boss_id  CHAR(3)
  );
INSERT INTO pub_employees VALUES('E01','Lord Copper', null);
INSERT INTO pub_employees VALUES('E02','Jocelyn Hitchcock','E01');
INSERT INTO pub_employees VALUES('E03','Mr. Salter','E01');
INSERT INTO pub_employees VALUES('E04','William Boot','E03');
INSERT INTO pub_employees VALUES('E05','Mr. Corker','E03');

-- table 8;
CREATE TABLE empsales (
  sales_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  emp_id CHAR(3) NOT NULL,
  sales  INTEGER NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES pub_employees (emp_id)
  );
INSERT INTO empsales (emp_id, sales) VALUES('E01',600);
INSERT INTO empsales (emp_id, sales) VALUES('E02',800);
INSERT INTO empsales (emp_id, sales) VALUES('E03',500);
INSERT INTO empsales (emp_id, sales) VALUES('E04',500);
INSERT INTO empsales (emp_id, sales) VALUES('E05',700);


-- table 9;
CREATE TABLE hire (
  hire_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  emp_id    CHAR(3)     NOT NULL,
  emp_title VARCHAR(20) NOT NULL,
  boss_id   CHAR(3),
  FOREIGN KEY (emp_id) REFERENCES pub_employees (emp_id)
  );
INSERT INTO hire (emp_id, emp_title, boss_id) VALUES('E01','CEO',NULL);
INSERT INTO hire  (emp_id, emp_title, boss_id) VALUES('E02','VP1','E01');
INSERT INTO hire  (emp_id, emp_title, boss_id) VALUES('E03','VP2','E01');
INSERT INTO hire  (emp_id, emp_title, boss_id) VALUES('E04','DIR1','E02');
INSERT INTO hire  (emp_id, emp_title, boss_id) VALUES('E05','DIR2','E02');


-- table 10;
CREATE TABLE roadtrip (
  seq   INTEGER     NOT NULL PRIMARY KEY,
  city  VARCHAR(17) NOT NULL,
  miles REAL        NOT NULL
  );
INSERT INTO roadtrip VALUES(1,'Seattle, WA',0);
INSERT INTO roadtrip VALUES(2,'Portland, OR',174);
INSERT INTO roadtrip VALUES(3,'San Francisco, CA',808);
INSERT INTO roadtrip VALUES(4,'Monterey, CA',926);
INSERT INTO roadtrip VALUES(5,'Los Angeles, CA',1251);
INSERT INTO roadtrip VALUES(6,'San Diego, CA',1372);