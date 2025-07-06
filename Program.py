import mysql.connector

# This connects the program to the clientia database created in MySQL.
clientdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Talllegodude10",
    database="clientia"
)

cursor = clientdb.cursor()

# This loop allows the user to navigate through menu options.
while True:
    print("1. Add new client\n2. List all clients\n3. List all scheduled appointments\n4. Exit\n\n")
    choice = input("Select an option: ")
    if choice == "1":
        fname = input("New Client:\nFirst Name - ")
        lname = input("Last Name - ")
        num = input("Phone Number - ")
        # This inserts a client into the clients table.
        cursor.execute(f"INSERT INTO clients (first_name, last_name, phone_number) VALUES ('{fname}', '{lname}', '{num}');")
    elif choice == "2":
        # Concatenation allows a result set to include multiple columns in just one column.
        cursor.execute("SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, c.phone_number, a.city, a.state FROM clients c JOIN addresses a ON c.client_key = a.client_key ORDER BY c.last_name, c.first_name;")
    elif choice == "3":
        cursor.execute("SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, s.name, s.description FROM clients c JOIN services s ON c.client_key = s.client_key ORDER BY c.last_name, c.first_name;")
    elif choice == "4":
        clientdb.close()
        break

    rows = cursor.fetchall()
    for row in rows:
        print(row)
    next = input("Press Enter to return...")