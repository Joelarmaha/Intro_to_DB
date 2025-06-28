import mysql.connector
from mysql.connector import Error


def create_database():
    try:
        # Connect to MySQL Server (adjust user and password as needed)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='your_password'  # replace with your actual password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create database (if not exists — using IF NOT EXISTS avoids SELECT/SHOW)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")


    except mysql.connector.Error:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        # Close database connection properly
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")


if __name__ == "__main__":
    create_database()
