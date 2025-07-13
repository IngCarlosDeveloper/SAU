from flask import Flask, render_template, request, Blueprint
import mysql.connector

modulo4 = Blueprint('insertar_seccion', __name__)

#--------------------------------------------------CONEXION  A LA DB------------------------------------

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)

#-------------------------------------------------PROCESO DE INSERCION EN LA DB---------------------------

def insert(Numero_Semestre, Carrera, Turno, Seccion):

    gestor = mydb.cursor()

    sql = "INSERT INTO secciones (Semestre, Carrera, Turno, NumSeccion) VALUES ( %s, %s, %s, %s)"

    valores = (Numero_Semestre, Carrera, Turno, Seccion)

    gestor.execute(sql, valores) #Une el query con los valores de la variable y los envia para ejecutarlos en la db

    mydb.commit() #confirma que se ejecuten las sintaxis pendientes

    print(gestor.rowcount, "Filas Instertadas.")

@modulo4.route('/')
def template():
    return render_template("secciones.html")

@modulo4.route('/insertar_seccion', methods=['POST'])
def datos():
    Numero_Semestre = str(request.form['Semestre'])
    Carrera = str(request.form['Carrera'])
    Turno = str(request.form['Turno'])
    Seccion = str(request.form['Seccion'])

    insert(Numero_Semestre, Carrera, Turno, Seccion)


    return "<h1>El número de semestre es: " + Numero_Semestre + "</h1>"