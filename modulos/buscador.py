from flask import Flask, render_template, request, Blueprint
import mysql.connector

modulo1 = Blueprint('buscador', __name__)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)

columnas = ['Semestre', 'Carrera', 'Turno', 'Numero_Seccion', 'Status']

@modulo1.route('/')
def template():
    return render_template("secciones.html")

@modulo1.route('/buscador', methods=['POST'])
def buscador():

    #extraigo las palabras del buscador
    Buscador = str(request.form['Buscador'])
    where = ''

    if Buscador != '':
        where = "WHERE "

        for i in columnas:
            where += i + " LIKE '%" + Buscador + "%' OR "

    where = where[:-4] #elimina el ultimo OR

    gestor = mydb.cursor()
    
    sql = "SELECT "
    
    for i in columnas:
        sql += i + ", "

    sql = sql[:-2] + " FROM secciones " + where

    gestor.execute(sql)

    resultado = gestor.fetchall()
    mostrar = ""

    contador = 0

    for i in resultado:
        mostrar += "<tr>" 
        for e in i:

            mostrar += "<th>"+str(i[contador])+"</th>"
            contador += 1
            
        #mostrar += "<h1>"+ str(i[1]) + "</h1><br>"
        mostrar += "</tr>"
        contador = 0

    encabezado = """
    <table border="1">
    <thead>
        <tr>
            <th>Semestre</th>
            <th>Carrera</th>
            <th>Turno</th>
            <th>Seccion</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        """+ mostrar +"""
    </tbody>
</table>
"""

    return "<h1>" + encabezado + "</h1>"