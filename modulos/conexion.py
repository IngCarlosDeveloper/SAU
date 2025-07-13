import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="proyect"
)
"""
Numero_Semestre = 4
Carrera = "Sistemas"
Turno = "D"
Seccion= 1

insertar = mydb.cursor()

sql = "INSERT INTO secciones (Semestre, Carrera, Turno, Numero_Seccion) VALUES (%s, %s, %s, %s)"

valores = [
    ("1", "Sistemas", "D", "1")
]

insertar.executemany(sql, valores)

mydb.commit

print(insertar.rowcount, "Insertadas.")
"""

gestor = mydb.cursor()

sql = "SELECT * FROM secciones WHERE Id_Seccion = 1"

gestor.execute(sql)

resultado = gestor.fetchall()

print(resultado)



