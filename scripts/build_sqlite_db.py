from pathlib import Path
import sqlite3
import pandas as pd

DATA_DIR = Path(__file__).resolve().parents[1] / "data"
DB_PATH = Path(__file__).resolve().parents[1] / "olist_ecommerce.db"

csv_files = [
    "olist_customers_dataset.csv",
    "olist_geolocation_dataset.csv",
    "olist_order_items_dataset.csv",
    "olist_order_payments_dataset.csv",
    "olist_order_reviews_dataset.csv",
    "olist_orders_dataset.csv",
    "olist_products_dataset.csv",
    "olist_sellers_dataset.csv",
    "product_category_name_translation.csv",
]

with sqlite3.connect(DB_PATH) as conn:
    for filename in csv_files:
        path = DATA_DIR / filename
        if not path.exists():
            print(f"Skipping missing file: {filename}")
            continue

        table_name = path.stem
        print(f"Loading {filename} -> {table_name}")
        df = pd.read_csv(path)
        df.to_sql(table_name, conn, if_exists="replace", index=False)

print(f"SQLite database created at: {DB_PATH}")
