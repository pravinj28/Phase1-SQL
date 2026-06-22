import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="fde_practice",
    user="postgres",
    password="Radhikaj@21"
)

cursor = conn.cursor()

# SELECT
cursor.execute("SELECT version();")
print(cursor.fetchone())

# CREATE TABLE
cursor.execute("""
    CREATE TABLE IF NOT EXISTS books (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255),
        author VARCHAR(255),
        year INT
    )
""")

# INSERT
cursor.execute("INSERT INTO books (title, author, year) VALUES (%s, %s, %s)",
               ("The Alchemist", "Paulo Coelho", 1988))

# SELECT all
cursor.execute("SELECT * FROM books")
print(cursor.fetchall())

conn.commit()
conn.close()
print("Done")