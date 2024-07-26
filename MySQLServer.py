import mysql.connector

# connects MySQlServer to to alx_book_store database

try:

    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="mydb"
    )

    mycursor = mydb.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' was created successful")

except mysql.Connector.Error:
    print ("Unable to connect to the database")

# Close connections
mycursor.close()
mydb.close()





