# !pip install psycopg2
import psycopg2 as pg2

conn = pg2.connect(database='dvdrental', user='postgres',password='PASSWORD')
# password is server password

cur = conn.cursor()

cur.execute('SELECT * FROM payment')

cur.fetchone() # 1번째 행 
cur.fetchmany(10) # 10개의 행
cur.fetchall() # 전체 행 가져옴

data = cur.fetchmany(10)
data[0][4]


conn.close() # 연결해제

conn.commit() # DB 변경사항 반영
