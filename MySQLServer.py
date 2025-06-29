import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Ayman&Asmaa1",
    #database = "alx_book_store"

)
    if mydb.is_connected():
        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error while connecting to MySQL: {e}")

finally:
    # Clean up: close cursor and connection
    if 'mycursor' in locals() and mycursor is not None:
        mycursor.close()
    if mydb.is_connected():
        mydb.close()



mycursor.close()
mydb.close()