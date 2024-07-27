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
create record("1","Cole Baidoo","cbaidoo@sandtech.com","123 Happiness Ave")
mydatabe.commit()


my_cursor.close()
mydatabase.close()



