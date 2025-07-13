from flask import Flask, render_template, request, render_template, redirect, url_for, session, Blueprint
import mysql.connector

modulo8 = Blueprint("registro", __name__)

#--------------------------------------------------CONEXION  A LA DB------------------------------------

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="sau"
)

#--------------------------------------------------PROCESO DE INSERCION EN LA DB-------------------------

@modulo8.route('/registro', methods=['GET', 'POST'])
def registro():
    if request.method == 'POST':
        nombres = request.form['nombres']
        email = request.form['email']
        Contraseña = request.form['contraseña']
        FechaNacimiento = request.form['edad']
        apellidos = request.form['apellidos']
        cedula = request.form['cedula']
        NumTelefono = request.form['celular']
        Nacionalidad = request.form['opcion']

        mycursor = mydb.cursor()
        sql = "INSERT INTO usuarios (nombres, email, contraseña, apellidos, cedula, FechaNacimiento, NumTelefono, Nacionalidad) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
        val = (nombres, email, Contraseña, apellidos, cedula, FechaNacimiento, NumTelefono, Nacionalidad)
        mycursor.execute(sql, val)
        mydb.commit()

        mycursor.close()

        return render_template('login.html', mensaje="Registro exitoso")

    return render_template('registro.html')