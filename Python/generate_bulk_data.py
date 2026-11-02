"""
Bulk messy-data generator for fraud_detection MySQL database.
Adds realistic, imperfect transaction & login data on top of your
existing hand-crafted rows.

BEFORE RUNNING:
1. pip install faker pymysql
2. Update DB_CONFIG below with your MySQL password
3. Make sure your customers/accounts tables already have data
   (this script pulls existing account_ids and inserts against them)
"""

import pymysql
import random
from datetime import datetime, timedelta
from faker import Faker

fake = Faker('en_IN')  # Indian locale for realistic names/cities

# ---- UPDATE THIS ----
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "MY_Password",
    "database": "fraud_detection"
}

TOTAL_TRANSACTIONS = 85000   # adjust: 75000 = 75k
TOTAL_LOGIN_LOGS = 50000
BATCH_SIZE = 5000             # insert in batches, not all at once

TXN_TYPES = ["Deposit", "Withdrawal", "Transfer"]  # None = messy/missing
LOCATIONS = ["Chennai", "Mumbai", "Delhi", "Bangalore", "Hyderabad",
             "chennai", "MUMBAI", "Bengaluru", "New Delhi", "", None]  # deliberately inconsistent

def get_connection():
    return pymysql.connect(**DB_CONFIG)

def get_existing_account_ids(conn):
    with conn.cursor() as cur:
        cur.execute("SELECT account_id FROM accounts")
        return [row[0] for row in cur.fetchall()]

def random_date(start_days_ago=730):
    delta = timedelta(days=random.randint(0, start_days_ago),
                       hours=random.randint(0, 23),
                       minutes=random.randint(0, 59))
    return datetime.now() - delta

def generate_transactions(conn, account_ids, total):
    print(f"Generating {total} transactions...")
    inserted = 0
    with conn.cursor() as cur:
        batch = []
        for i in range(total):
            account_id = random.choice(account_ids)
            amount = round(random.choice([
                random.uniform(100, 5000),      # normal
                random.uniform(5000, 50000),    # large
                random.uniform(50000, 500000)   # rare, suspiciously large (fraud signal)
            ]), 2)
            txn_type = random.choice(TXN_TYPES)
            location = random.choice(LOCATIONS)
            txn_date = random_date()

            batch.append((account_id, txn_type, amount, location, txn_date))

            if len(batch) >= BATCH_SIZE:
                cur.executemany(
                    """INSERT INTO transactions
                       (account_id, transaction_type, amount, location, transaction_date)
                       VALUES (%s, %s, %s, %s, %s)""",
                    batch
                )
                conn.commit()
                inserted += len(batch)
                print(f"  {inserted}/{total} inserted")
                batch = []

        if batch:
            cur.executemany(
                """INSERT INTO transactions
                   (account_id, transaction_type, amount, location, transaction_date)
                   VALUES (%s, %s, %s, %s, %s)""",
                batch
            )
            conn.commit()
            inserted += len(batch)
    print(f"Done: {inserted} transactions inserted.\n")

def generate_login_logs(conn, account_ids, total):
    print(f"Generating {total} login logs...")
    statuses = ["Success", "Failed", "Success", "Success", "Failed"]  # weighted, some failures
    inserted = 0
    with conn.cursor() as cur:
        batch = []
        for i in range(total):
            customer_id = random.choice(account_ids)  # reuse ids loosely for demo
            login_time = random_date()
            status = random.choice(statuses)
            ip = fake.ipv4()
            location = random.choice(LOCATIONS)

            batch.append((customer_id, login_time, status, ip, location))

            if len(batch) >= BATCH_SIZE:
                cur.executemany(
                    """INSERT INTO login_logs
                       (customer_id, login_time, status, ip_address, location)
                       VALUES (%s, %s, %s, %s, %s)""",
                    batch
                )
                conn.commit()
                inserted += len(batch)
                print(f"  {inserted}/{total} inserted")
                batch = []

        if batch:
            cur.executemany(
                """INSERT INTO login_logs
                   (customer_id, login_time, status, ip_address, location)
                   VALUES (%s, %s, %s, %s, %s)""",
                batch
            )
            conn.commit()
            inserted += len(batch)
    print(f"Done: {inserted} login logs inserted.\n")

if __name__ == "__main__":
    conn = get_connection()
    try:
        account_ids = get_existing_account_ids(conn)
        print(f"Found {len(account_ids)} existing accounts.\n")

        generate_transactions(conn, account_ids, TOTAL_TRANSACTIONS)
        generate_login_logs(conn, account_ids, TOTAL_LOGIN_LOGS)

        print("All done. Re-run your window function / view queries to see it at scale.")
    finally:
        conn.close()
