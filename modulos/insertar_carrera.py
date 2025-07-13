from flask import Flask, render_template, request, Blueprint, redirect, url_for
import mysql.connector

modulo5 = Blueprint('insertar_carrera', __name__)

#--------------------------------------------------CONEXION  A LA DB------------------------------------

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)

#-------------------------------------------------PROCESO DE INSERCION EN LA DB---------------------------

def insert(Nombre_Carrera):

    gestor = mydb.cursor()

    sql = "INSERT INTO carrera (Descripcion) VALUES ('"+ Nombre_Carrera +"')"

    gestor.execute(sql) #Une el query con los valores de la variable y los envia para ejecutarlos en la db

    mydb.commit() #confirma que se ejecuten las sintaxis pendientes

    mensaje = ""

    if gestor.rowcount > 0:
        mensaje = "Datos guardados exitosamente :D"
    else:
        mensaje = "Error al momento de hacer el insert :C" 


@modulo5.route('/insertar_carrera', methods=['POST'])
def datos():
    Nombre_Carrera = str(request.form['Carrera'])

    insert(Nombre_Carrera)

    #return "ola"
    return redirect(url_for("principal"))