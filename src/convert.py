import sqlite3
import re

def convert_sqlite_to_mysql(sqlite_db_path, output_sql_path):
    # Connect to the SQLite database
    conn = sqlite3.connect(sqlite_db_path)
    cursor = conn.cursor()

    # Open the output file
    with open(output_sql_path, 'w') as f:
        # Write the MySQL database creation command
        f.write("CREATE DATABASE IF NOT EXISTS your_new_database;\n")
        f.write("USE your_new_database;\n")

        # Fetch all tables from the SQLite database
        cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
        tables = cursor.fetchall()

        for table in tables:
            table_name = table[0]

            # Fetch the table schema
            cursor.execute(f"PRAGMA table_info({table_name});")
            columns = cursor.fetchall()

            # Write the table creation command
            f.write(f"CREATE TABLE `{table_name}` (\n")
            column_definitions = []
            for column in columns:
                col_name = column[1]
                col_type = column[2]
                not_null = "NOT NULL" if column[3] else ""
                default = f"DEFAULT {column[4]}" if column[4] is not None else ""
                primary_key = "PRIMARY KEY" if column[5] else ""

                # Convert SQLite data types to MySQL data types
                if col_type.upper() == "INTEGER":
                    col_type = "INT"
                elif col_type.upper() == "TEXT":
                    col_type = "VARCHAR(255)"
                elif col_type.upper() == "REAL":
                    col_type = "DOUBLE"
                elif col_type.upper() == "BOOLEAN":
                    col_type = "TINYINT(1)"

                column_definitions.append(f"  `{col_name}` {col_type} {not_null} {default} {primary_key}")

            f.write(",\n".join(column_definitions))
            f.write("\n);\n")

            # Fetch all data from the table
            cursor.execute(f"SELECT * FROM {table_name}")
            rows = cursor.fetchall()
            for row in rows:
                values = ', '.join(f"'{str(v).replace("'", "''")}'" if isinstance(v, str) else str(v) for v in row)
                f.write(f"INSERT INTO `{table_name}` VALUES ({values});\n")

    # Close the SQLite connection
    conn.close()

# Specify the paths to your SQLite database and output SQL file
sqlite_db_path = 'data.db'
output_sql_path = 'data.sql'

# Convert the SQLite database to a MySQL-compatible SQL file
convert_sqlite_to_mysql(sqlite_db_path, output_sql_path)
print("Conversion completed!")
