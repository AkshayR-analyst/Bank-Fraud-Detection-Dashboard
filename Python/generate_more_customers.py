"""
Adds bulk fake customers + accounts to fraud_detection database.
Run this BEFORE generating more transactions, so transactions
spread across many customers instead of just your original 22.

BEFORE RUNNING:
1. pip install faker pymysql (already installed)
2. Update DB_CONFIG password below
"""

import pymysql
import random
from faker import Faker

fake = Faker('en_IN')

DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "Akshay@2005",
    "database": "fraud_detection"
}

TOTAL_NEW_CUSTOMERS = 500   # adjust as needed

CITIES = ["Chennai", "Mumbai", "Delhi", "Bangalore", "Hyderabad",
          "Pune", "Kolkata", "Jaipur", "chennai", "MUMBAI"]  # messy on purpose

ACCOUNT_TYPES = ["Savings", "Current"]
ACCOUNT_STATUS = ["Active", "Inactive"]

def get_connection():
    return pymysql.connect(**DB_CONFIG)

def generate_customers_and_accounts(conn, total):
    print(f"Generating {total} customers + accounts...")
    with conn.cursor() as cur:
        for i in range(total):
            name = fake.name()
            email = fake.unique.email()
            phone = fake.numerify("9#########")
            city = random.choice(CITIES)
            dob = fake.date_of_birth(minimum_age=18, maximum_age=70)

            cur.execute(
                """INSERT INTO customers (full_name, email, phone, city, date_of_birth)
                   VALUES (%s, %s, %s, %s, %s)""",
                (name, email, phone, city, dob)
            )
            customer_id = cur.lastrowid

            # give each customer 1 account
            acc_number = fake.unique.numerify("ACC########")
            acc_type = random.choice(ACCOUNT_TYPES)
            balance = round(random.uniform(1000, 500000), 2)
            status = random.choice(ACCOUNT_STATUS)

            cur.execute(
                """INSERT INTO accounts (customer_id, account_number, account_type, balance, status)
                   VALUES (%s, %s, %s, %s, %s)""",
                (customer_id, acc_number, acc_type, balance, status)
            )

            if (i + 1) % 100 == 0:
                conn.commit()
                print(f"  {i + 1}/{total} customers+accounts inserted")

        conn.commit()
    print(f"Done: {total} customers + accounts inserted.\n")

if __name__ == "__main__":
    conn = get_connection()
    try:
        generate_customers_and_accounts(conn, TOTAL_NEW_CUSTOMERS)
        print("Now your transactions/login_logs script will spread across many more accounts.")
        print("You can re-run generate_bulk_data.py to add more transactions against these new accounts too.")
    finally:
        conn.close()
