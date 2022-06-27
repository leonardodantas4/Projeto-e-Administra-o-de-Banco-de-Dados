from models import database

def connectDB():
    database.connect()

def closeConnect():
    database.close()