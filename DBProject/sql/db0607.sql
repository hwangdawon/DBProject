SELECT * FROM TAB

INSERT INTO  DEPARTMENT (dept_id,dept_name,office)
VALUES ('920','컴퓨터공학과','201호')

SELECT * FROM DEPARTMENT

INSERT INTO DEPARTMENT values('920','컴퓨터공학과','201호');
INSERT INTO  DEPARTMENT values('923','산업공학과','207호');
INSERT INTO  DEPARTMENT values('925','전자공학과','308호');

SELECT * FROM  STUDENT 

INSERT INTO STUDENT 
values('1292001','900424*1825409','김광식',3,'서울',920)

INSERT INTO  STUDENT 
values('1292002','900305*1730021','김정현',3,'서울',920)

INSERT INTO STUDENT 
values('1292002','900305*1730021','김현정',3,'대전',920)

INSERT INTO STUDENT 
VALUES('1292301','890902*2704012','김현정',2,'대구',923)

INSERT INTO  STUDENT 
values('1292303','310715*1524390','박광수',3,'광주',923)

INSERT INTO STUDENT 
values('1292303','921011*1809003','김우주',4,'부산',923)

INSERT INTO STUDENT 
values('1292501','900825*1506390','박철수',3,'대전',925)

INSERT INTO STUDENT 
values('1292502','911011*1809003','백태성',3,'서울',925)

UPDATE STUDENT 
SET YEAR =YEAR+ 1


SELECT * FROM PROFESSOR 

INSERT INTO PROFESSOR 
	values('92001', '590327*1839240', '이태규', '920', '교수', 1997)
	
INSERT INTO  PROFESSOR 
	values('92002', '690702*1350026', '고희석', '920', '부교수', 2003)
	
INSERT INTO  PROFESSOR 
	values('92301', '741011*2765501', '최성희', '923', '부교수', 2005)
	
INSERT INTO  PROFESSOR 
	values('92302', '750728*1102458', '김태석', '923', '교수', 1999)
	
INSERT INTO  PROFESSOR 
	values('92501', '620505*1200546', '박철재', '925', '조교수', 2007)
	
INSERT INTO  PROFESSOR 
	values('92502', '740101*1830264', '장민석', '925', '부교수', 2005)
	
UPDATE PROFESSOR 
SET POSITION ='교수',dept_id='923'
WHERE  name='고희석'

DELETE FROM PROFESSOR 
WHERE name='김태석'
	

	
SELECT * FROM COURSE  

	
insert into course values('C101', '전산개론', 3)

insert into course values('C102', '자료구조', 3)

insert into course values('C103', '데이터베이스', 4)

insert into course values('C301', '운영체제', 3)

insert into course values('C302', '컴퓨터구조', 3)

insert into course values('C303', '이산수학', 4)

insert into course values('C304', '객체지향언어', 4)

insert into course values('C501', '인공지능', 3)

insert into course values('C502', '알고리즘', 2)

SELECT * FROM  CLASS 

insert into class values('C101-01', 'C101', 2012, 1, 'A', '92301', '301호', 40)

insert into class values('C102-01', 'C102', 2012, 1, 'A', '92001', '209호', 30)

insert into class values('C103-01', 'C103', 2012, 1, 'A', '92501', '208호', 30)

insert into class values('C103-02', 'C103', 2012, 1, 'B', '92301', '301호', 30)

insert into class values('C501-01', 'C501', 2012, 1, 'A', '92501', '103호', 45)

insert into class values('C501-02', 'C501', 2012, 1, 'B', '92502', '204호', 25)

insert into class values('C301-01', 'C301', 2012, 2, 'A', '92502', '301호', 30)

insert into class values('C302-01', 'C302', 2012, 2, 'A', '92501', '209호', 45)

insert into class values('C502-01', 'C502', 2012, 2, 'A', '92001', '209호', 30)

insert into class values('C502-02', 'C502', 2012, 2, 'B', '92301', '103호', 26)


SELECT * FROM  TAKES 

insert into takes values('1292001', 'C101-01', 'B+')

insert into takes values('1292001', 'C103-01', 'A+')

insert into takes values('1292001', 'C301-01', 'A')

insert into takes values('1292002', 'C102-01', 'A')

insert into takes values('1292002', 'C103-01', 'B+')

insert into takes values('1292002', 'C502-01', 'C+')

insert into takes values('1292003', 'C103-02', 'B')

insert into takes values('1292003', 'C501-02', 'A+')

insert into takes values('1292301', 'C102-01', 'C+')

insert into takes values('1292303', 'C102-01', 'C')

insert into takes values('1292303', 'C103-02', 'B+')

insert into takes values('1292303', 'C501-01', 'A+')

SELECT * FROM EMP 

SELECT  name,dept_name
FROM DEPARTMENT  ,STUDENT  
WHERE department.DEPT_ID =student.DEPT_ID 

SELECT name,2023-year_emp
FROM PROFESSOR 

SELECT student.NAME ,student.STU_ID ,department.DEPT_NAME 
FROM STUDENT ,DEPARTMENT 
WHERE student.DEPT_ID =department.DEPT_ID 

UPDATE STUDENT 
SET YEAR =YEAR -1

SELECT  *FROM STUDENT 


SELECT student.STU_ID 
FROM STUDENT ,DEPARTMENT 
WHERE  student.DEPT_ID =department.DEPT_ID AND 
student.YEAR =3 AND 
department.DEPT_NAME ='컴퓨터공학과'

SELECT name,stu_id
FROM STUDENT 
WHERE  YEAR =3 OR YEAR =4
order BY name,stu_id

SELECT name,stu_id
FROM STUDENT 
WHERE  YEAR =3 OR YEAR =4
ORDER BY name DESC,stu_id

SELECT  s.name,d.dept_name
FROM STUDENT s, DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID 

SELECT  s2.name
FROM STUDENT s1,student s2
WHERE  s1.ADDRESS  =s2.ADDRESS AND s1.name ='김광식'


SELECT name ,address
FROM STUDENT 
WHERE  address='서울'

SELECT *
FROM STUDENT s1,STUDENT s2  
WHERE s1.ADDRESS =s2.ADDRESS 
AND s1.name ='김광식'

SELECT  name,POSITION ,2023-year_emp
FROM PROFESSOR 

SELECT *
FROM  STUDENT 
WHERE name LIKE '김%'

SELECT  *
FROM STUDENT 
WHERE resident_id LIKE '%*2%' 
OR resident_id LIKE '%*4%' 

SELECT  name FROM STUDENT 
UNION
SELECT name FROM PROFESSOR 

SELECT dept_id FROM STUDENT 
UNION ALL
SELECT dept_id FROM PROFESSOR 

SELECT * FROM TAKES 

SELECT * FROM  CLASS 

SELECT s.stu_id
FROM STUDENT s ,DEPARTMENT d ,TAKES t 
WHERE s.DEPT_ID =d.DEPT_ID AND 
t.stu_id =s.STU_ID AND 
dept_name ='컴퓨터공학과' AND grade = 'A+'

SELECT stu_id
FROM STUDENT s ,DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID AND dept_name ='컴퓨터공학과'
INTERSECT 
SELECT  stu_id
FROM TAKES 
WHERE grade ='A+';

SELECT stu_id FROM STUDENT s ,DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID  AND dept_name='산업공학과'
MINUS 
SELECT  stu_id FROM TAKES 
WHERE grade='A+'

SELECT  title,credit,YEAR,semester
FROM COURSE ,CLASS 
WHERE course.COURSE_ID =class.COURSE_ID 

SELECT  title,credit,YEAR ,semester
FROM COURSE LEFT OUTER JOIN CLASS 
USING (COURSE_id)

SELECT title,Credit,YEAR,semester
FROM COURSE ,CLASS 
WHERE course.COURSE_ID =class.COURSE_ID (+)

SELECT title,credit,YEAR ,semester
FROM COURSE RIGHT OUTER JOIN CLASS 
USING (COURSE_id)

SELECT title,credit,YEAR ,semester
FROM COURSE ,CLASS 
WHERE course.COURSE_ID (+)=class.COURSE_ID 

SELECT title,credit,YEAR ,semester
FROM COURSE FULL OUTER JOIN CLASS 
USING (COURSE_id)

SELECT COUNT(*)
FROM STUDENT 
WHERE YEAR =3;

SELECT COUNT(comm) 
FROM EMP 

SELECT COUNT(dept_id)
FROM STUDENT 

SELECT COUNT(DISTINCT dept_id)
FROM STUDENT 

SELECT COUNT(*)
FROM STUDENT s ,DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID AND d.DEPT_NAME ='컴퓨터공학과'

SELECT *--COUNT(*) 
FROM EMP
WHERE job='SALESMAN' AND sal>=1500

SELECT SUM(sal)
FROM EMP 
WHERE job='SALESMAN'

SELECT sum(2012-YEAR_emp)
FROM PROFESSOR 

SELECT * FROM PROFESSOR 

SELECT sum(sal) 
FROM EMP e ,DEPT d
WHERE e.DEPTNO =d.DEPTNO  AND dname ='RESEARCH'

SELECT  avg(2012-YEAR_emp)
FROM PROFESSOR 

SELECT avg(sal)
FROM EMP
WHERE job='MANAGER' --2758.3333

SELECT avg(sal)
FROM EMP 
WHERE job='SALESMAN' --1400

SELECT avg(sal)
FROM EMP 
WHERE job='CLERK' --1037.5

SELECT avg(sal)
FROM EMP 
WHERE job='ANALYST' --3000

SELECT avg(sal)
FROM EMP 
WHERE job='PRESIDENT' --5000

SELECT max(sal) ,avg(sal),min(sal)
FROM EMP e , DEPT d 
WHERE e.DEPTNO =d.DEPTNO  AND dname ='ACCOUNTING'

SELECT  dept_id,COUNT(*)
FROM STUDENT 
GROUP BY dept_id

SELECT dept_name,COUNT(*)
FROM STUDENT s ,DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID 
GROUP BY dept_name

SELECT  dname,COUNT(*),avg(sal),max(sal),min(sal)
FROM EMP e ,DEPT d 
WHERE e.DEPTNO =d.DEPTNO 
GROUP BY dname
ORDER BY dname 

SELECT  dept_name,COUNT(*),AVG(2012-year_emp),max(2012-YEAR_emp)
FROM PROFESSOR p ,DEPARTMENT d 
WHERE p.DEPT_ID =d.DEPT_ID 
GROUP BY dept_name

SELECT dept_name,COUNT(*),AVG(2012-year_emp),max(2012-YEAR_emp)
FROM PROFESSOR p ,DEPARTMENT d 
WHERE p.DEPT_ID =d.DEPT_ID  
GROUP BY dept_name
HAVING  avg(2012-YEAR_emp)>=10

SELECT  dname,COUNT(*),avg(sal),max(sal),min(sal)
FROM EMP e ,DEPT d 
WHERE e.DEPTNO=d.DEPTNO 
GROUP BY dname
HAVING COUNT(*)>=5 

SELECT *
FROM EMP 
WHERE comm IS  NULL 

SELECT *
FROM EMP 
WHERE comm IS  NOT NULL 

SELECT stu_id
FROM TAKES 
WHERE  grade <>'A+'

SELECT *
FROM EMP 
WHERE comm <>1400

SELECT title
FROM COURSE 
WHERE  course_id IN 
(SELECT DISTINCT course_id
FROM CLASS 
WHERE classroom ='301호')

SELECT  DISTINCT title
FROM COURSE c1,class c2
WHERE c1.COURSE_ID =c2.COURSE_ID 
AND classroom='301호'

SELECT title
FROM COURSE 
WHERE course_id NOT IN 
(SELECT DISTINCT course_id
FROM CLASS 
WHERE YEAR = 2012 AND semester=2)

CREATE OR REPLACE VIEW v_takes AS
SELECT stu_id,class_id
FROM TAKES 

SELECT *
FROM V_TAKES 

