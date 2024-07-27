 mydatabase = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="alx_book_store"
    );

my_cursor = mydatabase.cursor()

def create record(customer_id,customer_name,email,address):
Query = "INSERT INTO customer (customer_id,customer_name,email,address) VALUES(%s,%s,%s,%s)"
Values = (customer_id,customer_name,email,address)
my_cursor.execute(Query,Values)
mydatabe.commit()

my_cursor.close()
mydatabase.close()



