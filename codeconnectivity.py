# -*- coding: utf-8 -*-
"""
Created on Sun Oct 17 17:31:34 2021

@author: RAHUL
"""

import sys
import cx_Oracle
import pandas as pd
con=cx_Oracle.connect('system/prachi123@127.0.0.1/XE')
if con!=None:
    print(con.version)
    print("connection done")
else:
    print("not done")
    
cur=con.cursor()
'''
cur.execute("insert into patient values(:id,:nm,:od,:cd,:vt,:dc,:st,:cnt,:pc,:dob,:active)",("1","Alex","2015-01-15","2015-01-21","MVX","Paul","SA","USA",34235,"1998-FEB-04","y"))
con.commit()

cur.execute("select * from patient")
for row in cur.fetchall():
    print(row)
'''

dataset = pd.read_csv("F:\cdac\DATABASE\incubyte\data.txt", delimiter=";")


sql='insert into patient values(:id,:nm,:od,:cd,:vt,:dc,:st,:cnt,:pc,:dob,:active)'
df_list = dataset.values.tolist()
n = 0
print(df_list[1])
for i in dataset.iterrows():
    cur.execute(sql,df_list[n])
    n += 1
    print(i)

con.commit()        


cur.close
con.close