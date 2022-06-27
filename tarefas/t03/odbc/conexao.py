import psycopg2

host = 'localhost'
dbname = 'AtividadesBD'
user = 'postgres'
password = 'postgres'
port = '5432'
conn = None
cur = None

def connectDB():
    try:
        connect1 = psycopg2.connect(
            host = host,
            dbname = dbname,
            user = user,
            password = password,
            port = port
        )
        return connect1

    except Exception as error:
        print(error)
