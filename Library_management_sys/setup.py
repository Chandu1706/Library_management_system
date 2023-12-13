import sqlite3

connection = sqlite3.connect("library.db")

cursor = connection.cursor()

try:
    cursor.execute("drop table books")
    cursor.execute("drop table borrowers")
except:
    pass

cursor.execute("create table books(book_id integer primary key, title text,author text,quantity integer)")
cursor.execute("create table borrowers(borrower_id integer primary key,name text,email text,bid integer,FOREIGN KEY(bid) REFERENCES books(book_id))")
cursor.execute("""INSERT INTO books VALUES
               (1,'Harry Potter','J K Rowling',12)
""")
cursor.execute("""INSERT INTO borrowers VALUES
               (1,'Chandu','korubillichandu123@gmail.com',1)
""")
connection.commit()
connection.close()
