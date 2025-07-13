from flask import Flask, render_template, request, Blueprint
import mysql.connector

modulo2= Blueprint("numero_semestre", __name__)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)

#columnas = ["ID_Materias", "Cod_Materia", "ID_Docente", "Id_Seccion", "NombreAsignatura", "NumSemestre", "Carrera", "Horario"]

gestor = mydb.cursor()

@modulo2.route('/numero_semestre', methods=['GET'])
def horario():
    Semestre = request.args.get('numero_sem')
    carrera = request.args.get('carrera')

    sql = "SELECT * FROM materias WHERE NumSemestre = " + Semestre + " AND Carrera = " + carrera

    gestor.execute(sql)

    resultado = gestor.fetchall()

    fila = list(range(18))
    columna = list(range(6))

    return render_template("crear_horario.html", resultado = resultado, fila=fila, columna=columna)