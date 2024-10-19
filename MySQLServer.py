import mysql.connector


try:

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="odunuga"
    )
    
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

    # Close connection to the database  
    mycursor.close()
    mydb.close()

except Exception as e:
    print(e)