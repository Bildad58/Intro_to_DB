my_database = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="alx_book_store"
    );

my_cursor = my_database.cursor()
my_cursor.execute

def Create record(customer_id,customer_name,email,address):
Query = "INSERT INTO customer (customer_id,customer_name,email,address) VALUES (%s,%s,%S,%s)"
Values = (customer_id,customer_name,email,address)
my_cursor.execute(Query,values)
Create record("2","Blessing Malik","bmalik@sandtech.com","124 Happiness  Ave.")
Create record("3","Obed Ehoneah","eobed@sandtech.com","125 Happiness  Ave.")
Create record("3","Nehemial Kamolu","nkamolu@sandtech.com","126 Happiness Ave.")

my_cursor.close()
my_databse.close()