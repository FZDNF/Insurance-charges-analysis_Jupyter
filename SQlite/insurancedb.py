import sqlite3
import pandas as pd
from pathlib import Path

csv_path = r"C:\Users\fabia\PycharmProjects\PythonProject1\.venv\insurance.csv"
db_path  = r"C:\Users\fabia\PycharmProjects\PythonProject1\db\insurance.db"

Path(r"C:\Users\fabia\PycharmProjects\PythonProject1\db").mkdir(parents=True, exist_ok=True)

df = pd.read_csv(csv_path)
conn = sqlite3.connect(db_path)
df.to_sql("insurance", conn, if_exists="replace", index=False)
conn.close()

print("DB erstellt:", db_path)
