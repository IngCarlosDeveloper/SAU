from flask import Flask, render_template, request, Blueprint
import mysql.connector

modulo3 = Blueprint("guardar_semestre", __name__)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)

def registrar_horario(horario):
    gestor = mydb.cursor()

    materia_horario = {}

    for coordenada, id_materia in horario:
        if id_materia not in materia_horario:
            materia_horario[id_materia] = []
        materia_horario[id_materia].append(coordenada)

    for id_materia in materia_horario:
        sql = "UPDATE materias SET Horario = '"+ str(materia_horario[id_materia]) +"' WHERE ID_Materias = " + str(id_materia)
        
        gestor.execute(sql)

    mydb.commit()
    gestor.close


@modulo3.route('/guardar_semestre', methods=['POST'])
def datos_horario():
    formulario = request.form

    horario = []

    for coordenada, dato in formulario.items():
        if dato != "":
            fila, columna = coordenada.split(",")

            fila = int(fila)
            columna = int(columna)
            dato = int(dato)

            horario.extend([[[fila, columna], dato]])

    registrar_horario(horario)
    return "horario guardado exitosamente :D"