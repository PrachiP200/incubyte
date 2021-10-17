SQL> create table patient(
  2  cust_id varchar2(18) primary key,
  3  cust_name varchar2(255) not null,
  4  cust_open_date date not null,
  5  L_consulted_Date date,
  6  Vacci_Type varchar2(5),
  7  doc_consulted varchar2(255),
  8  state varchar(5),
  9  country varchar(5),
 10  post_code number(5),
 11  dob date,
 12  active_cust varchar(1)
 13  );

Table created.

SQL> select * from patient;

no rows selected


SQL> alter table patient set
  2  active_cust varchar2(5) and
  3  state varchar2(5) and
  4  country varchar2(5);
active_cust varchar2(5) and
*
ERROR at line 2:
ORA-02000: missing UNUSED keyword 


SQL> ed
Wrote file afiedt.buf

  1  alter table patient 
  2* modify active_cust varchar2(5) 
SQL> /

Table altered.


SQL> insert into patient values('1','Alex','10-JAN-2015','12-JAN-2015','MVX','Paul','SA','USA',34235,'4-JAN-1998','y');

1 row created.

SQL> select * from patient;

CUST_ID                                                                                                                 
------------------                                                                                                      
CUST_NAME                                                                                                               
------------------------------------------------------------------------------------------------------------------------
CUST_OPEN L_CONSULT VACCI                                                                                               
--------- --------- -----                                                                                               
DOC_CONSULTED                                                                                                           
------------------------------------------------------------------------------------------------------------------------
STATE COUNT  POST_CODE DOB       ACTIV                                                                                  
----- ----- ---------- --------- -----                                                                                  
1                                                                                                                       
Alex                                                                                                                    
10-JAN-15 12-JAN-15 MVX                                                                                                 
Paul                                                                                                                    
SA    USA        34235 04-JAN-98 y                                                                                      
                                                                                                                        

SQL> set linesize 120;


SQL> select * from patient;

CUST_ID                                                                                                                                                                                                 
------------------                                                                                                                                                                                      
CUST_NAME                                                                                                                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CUST_OPEN L_CONSULT VACCI                                                                                                                                                                               
--------- --------- -----                                                                                                                                                                               
DOC_CONSULTED                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STATE COUNT  POST_CODE DOB       ACTIV                                                                                                                                                                  
----- ----- ---------- --------- -----                                                                                                                                                                  
1                                                                                                                                                                                                       
Alex                                                                                                                                                                                                    
10-JAN-15 12-JAN-15 MVX                                                                                                                                                                                 
Paul                                                                                                                                                                                                    
SA    USA        34235 04-JAN-98 y                                                                                                                                                                      
                                                                                                                                                                                                        

SQL> ed
Wrote file afiedt.buf

  1  alter table patient
  2* modify POST_CODE number(9,2)
SQL> /

Table altered.

SQL> select * from patient;

CUST_ID                                                                                                                                                                                                 
------------------                                                                                                                                                                                      
CUST_NAME                                                                                                                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CUST_OPEN L_CONSULT VACCI                                                                                                                                                                               
--------- --------- -----                                                                                                                                                                               
DOC_CONSULTED                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STATE COUNT  POST_CODE DOB       ACTIV                                                                                                                                                                  
----- ----- ---------- --------- -----                                                                                                                                                                  
1                                                                                                                                                                                                       
Alex                                                                                                                                                                                                    
10-JAN-15 12-JAN-15 MVX                                                                                                                                                                                 
Paul                                                                                                                                                                                                    
SA    USA        34235 04-JAN-98 y                                                                                                                                                                      
                                                                                                                                                                                                        
3                                                                                                                                                                                                       
Sumith                                                                                                                                                                                                  
11-NOV-16 29-NOV-16 MVX                                                                                                                                                                                 
Reddy                                                                                                                                                                                                   
KA    IND        42335 16-AUG-98 Y                                                                                                                                                                      
                                                                                                                                                                                                        
4                                                                                                                                                                                                       
Joma                                                                                                                                                                                                    
09-AUG-17 15-AUG-17 MVX                                                                                                                                                                                 
Chuck                                                                                                                                                                                                   
VIC   AU         34214 01-JAN-97 N                                                                                                                                                                      
                                                                                                                                                                                                        
5                                                                                                                                                                                                       

CUST_ID                                                                                                                                                                                                 
------------------                                                                                                                                                                                      
CUST_NAME                                                                                                                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CUST_OPEN L_CONSULT VACCI                                                                                                                                                                               
--------- --------- -----                                                                                                                                                                               
DOC_CONSULTED                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STATE COUNT  POST_CODE DOB       ACTIV                                                                                                                                                                  
----- ----- ---------- --------- -----                                                                                                                                                                  
Mathew                                                                                                                                                                                                  
17-DEC-14 25-DEC-14 MCV                                                                                                                                                                                 
Bill                                                                                                                                                                                                    
WAS   PHIL       34124 23-FEB-98 Y                                                                                                                                                                      
                                                                                                                                                                                                        
6                                                                                                                                                                                                       
Matt                                                                                                                                                                                                    
29-MAY-18 04-JUN-18 MXV                                                                                                                                                                                 
Paul                                                                                                                                                                                                    
NY    USA        35231 12-FEB-00 Y                                                                                                                                                                      
                                                                                                                                                                                                        
7                                                                                                                                                                                                       
Atherv                                                                                                                                                                                                  
06-MAY-19 15-MAY-19 MXV                                                                                                                                                                                 
Reddy                                                                                                                                                                                                   
MH    IND        52145 14-FEB-00 Y                                                                                                                                                                      
                                                                                                                                                                                                        
8                                                                                                                                                                                                       
Robin                                                                                                                                                                                                   

CUST_ID                                                                                                                                                                                                 
------------------                                                                                                                                                                                      
CUST_NAME                                                                                                                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CUST_OPEN L_CONSULT VACCI                                                                                                                                                                               
--------- --------- -----                                                                                                                                                                               
DOC_CONSULTED                                                                                                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STATE COUNT  POST_CODE DOB       ACTIV                                                                                                                                                                  
----- ----- ---------- --------- -----                                                                                                                                                                  
09-AUG-17 17-AUG-17 MCV                                                                                                                                                                                 
Chuck                                                                                                                                                                                                   
VIC   AU         25155 10-DEC-96 N                                                                                                                                                                      
                                                                                                                                                                                                        
9                                                                                                                                                                                                       
Gaurav                                                                                                                                                                                                  
09-JUN-20 14-AUG-20 MVX                                                                                                                                                                                 
Reddy                                                                                                                                                                                                   
MH    IND        34515 10-OCT-99 Y                                                                                                                                                                      
                                                                                                                                                                                                        
10                                                                                                                                                                                                      
Jacob                                                                                                                                                                                                   
27-JUL-18 08-AUG-18 MXV                                                                                                                                                                                 
Andrew                                                                                                                                                                                                  
LI    UK         32546 07-JUL-99 N                                                                                                                                                                      
                                                                                                                                                                                                        

9 rows selected.

