import psycopg2


con = psycopg2.connect(dbname='db', user='postgres' , password='123', host='172.17.0.1', port='5432')
print("Connection ok!")
cursor = con.cursor()
cursor.execute('Select version()')
record = cursor.fetchall()
print(record)
cursor.close()
con.close()
