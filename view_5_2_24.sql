Database SQL – VIEW
จาการใช้งาน SQL Select statement จะเห็นว่า 
ในบางครั้งเรามักจะมี Select statement ที่ต้องใช้งานประจำ
เพื่อดึงข้อมูลออกมาในรูปแบบที่ต้องการ เราสามารถใช้ 
SQL View นี้ช่วยได้ โดย SQL VIEW จะทำการเก็บรูปแบบการ 
query หรือ SQL Select statement ที่เราตั้งไว้ใน SQL VIEW 
ซึ่งสามารถทำได้ตั้งแต่ query ข้อมูลทั้งหมดของ TABLE รวมถึงการทำ 
SQL Join, SQL Union, SQL Intersect และ SQL Except ที่
ผลลัพธุ์ออกมาในรูปแบบตาราง หรือ table

คุณสมบัติของ VIEW
สร้างโครงสร้างของข้อมูลในรูปแบบที่ user ใช้งานปกติจาก table
ปรับเปลี่ยนข้อมูลภายใน TABLE ให้แสดงออกมาในรูปแบบที่ต้องการ 
โดยไม่กระทบกับข้อมูลหลัก
สรุปข้อมูลจาก table ในรูปแบบของ report ที่ user ต้องการ
 

รูปแบบการสร้าง VIEW (Syntax)
การใช้งาน SQL View สามรถสร้างได้จากรูปแบบของ SQL Select statement 
ที่ต้องการ โดยสามารถสร้างจาก table เดียว หรือ หลาย TABLE 
ก็ได้ แต่ต้องมีสิทธิ์ในการเข้าถึงข้อมูลภายใต้ table นั้น (GRANT VIEW)

CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE [condition];

CREATE VIEW emp AS
SELECT ssn,fname,lname,salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT * from emp;

CREATE VIEW works AS 
SELECT ssn,fname,lname,dname,pname,hours 
FROM employee,works_on,project,department
WHERE ssn = essn AND pno = pnumber AND dno = dnumber;

SELECT * FROM works;

SELECT pname,GROUP_CONCAT(fname)
FROM works
GROUP BY pname;


