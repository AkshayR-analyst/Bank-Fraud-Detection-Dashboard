"""
EDA (Exploratory Data Analysis) script for fraud_detection MySQL database.
Uses pandas to pull data and summarize patterns before building
the fraud-scoring logic.

BEFORE RUNNING:
1. pip install pandas pymysql
2. Update DB_CONFIG password below
"""

import pandas as pd
import pymysql

DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "MY_Password",
    "database": "fraud_detection"
}

def get_connection():
    return pymysql.connect(**DB_CONFIG)

def main():
    conn = get_connection()

    print("=" * 60)
    print("Loading transactions...")
    df = pd.read_sql("SELECT * FROM transactions", conn)
    print(f"Loaded {len(df)} rows, {len(df.columns)} columns\n")

    # 1. Basic structure
    print("--- Shape & Info ---")
    print(df.shape)
    print(df.dtypes)
    print()

    # 2. Missing values
    print("--- Missing Values ---")
    print(df.isnull().sum())
    print()

    # 3. Duplicate rows
    print("--- Duplicates ---")
    print(f"Duplicate rows: {df.duplicated().sum()}")
    print()

    # 4. Amount statistics
    print("--- Amount Stats ---")
    print(df['amount'].describe())
    print()

    # 5. Transaction type breakdown
    print("--- Transaction Type Counts ---")
    print(df['transaction_type'].value_counts())
    print()

    # 6. Status breakdown (Success/Failed/Pending)
    print("--- Status Counts ---")
    print(df['status'].value_counts())
    print()

    # 7. Location patterns (messy data check)
    print("--- Top 15 Locations (check for inconsistent casing) ---")
    print(df['location'].value_counts().head(15))
    print()

    # 8. Average amount by location
    print("--- Average Amount by Location (top 10) ---")
    print(df.groupby('location')['amount'].mean().sort_values(ascending=False).head(10))
    print()

    # 9. Suspiciously large transactions (percentile-based fraud signal)
    # Standard deviation didn't work here because amounts are drawn from
    # 3 overlapping ranges (normal/large/rare-large), which inflates std
    # so much that even genuinely large transactions look "normal."
    # Percentile-based flags the top 1% regardless of distribution shape.
    threshold_99 = df['amount'].quantile(0.99)
    large_txns = df[df['amount'] > threshold_99]
    print(f"--- Transactions above 99th percentile (${threshold_99:,.2f}) ---")
    print(f"Count: {len(large_txns)}")
    print(large_txns[['account_id', 'amount', 'location', 'transaction_date']].head(10))
    print()

    # Also show top 0.1% for a stricter "high alert" tier
    threshold_999 = df['amount'].quantile(0.999)
    critical_txns = df[df['amount'] > threshold_999]
    print(f"--- Transactions above 99.9th percentile (${threshold_999:,.2f}) — critical tier ---")
    print(f"Count: {len(critical_txns)}")
    print()

    print("EDA complete.")
    conn.close()

if __name__ == "__main__":
    main()
