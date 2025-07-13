from flask import Flask, render_template, request, session, Blueprint, redirect, url_for, abort
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sau"
)
print(44444444444444444444444444444444444444444444)
#print(session)

horas = [
            "7:00 a.m. - 7:45 a.m.", "7:45 a.m. - 8:30 a.m.", "8:30 a.m. - 9:15 a.m.",
            "9:15 a.m. - 10:00 a.m.", "10:00 a.m. - 10:45 a.m.", "10:45 a.m. - 11:30 a.m.",
            "11:30 a.m. - 12:15 p.m.", "1:00 p.m. - 1:45 p.m.", "1:45 p.m. - 2:30 p.m.",
            "2:30 p.m. - 3:15 p.m.", "3:15 p.m. - 4:00 p.m.", "4:00 p.m. - 4:45 p.m.",
            "4:45 p.m. - 5:30 p.m.", "5:30 p.m. - 6:15 p.m.", "6:15 p.m. - 7:00 p.m.",
            "7:00 p.m. - 7:45 p.m.", "7:45 p.m. - 8:30 p.m."
        ]

horario = [
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0]
        ]

gestor = mydb.cursor()

modulo10 = Blueprint('index_profesor', __name__)

@modulo10.route('/index_profesor')  # Página de bienvenida (protegida)

def generar_horario():
    sql = "SELECT * FROM materias WHERE ID_Docente = '"+ str(session['ID_Docente']) + "';"

    gestor.execute(sql)

    numerocolumna = list(range(6))
    resultado = gestor.fetchall()

    for materia in resultado:
        ID_Materia, Cod_Materia, _, _, NombreAsignatura, _, _, horarios = materia  # Extraer campos de la tupla
        
        horarios = eval(horarios) if isinstance(horarios, str) else horarios  # Convertir string a lista
        
        for fila, columna in horarios:  # Iterar sobre los horarios
            horario[fila][columna] = NombreAsignatura  # Guardamos el nombre en la matriz

    #return str(horario)

    union = zip(horas, horario)

    #return render_template('index_profesor.html', numerocolumna = numerocolumna, horario = horario)
    #return render_template('index_profesor.html', horario = horario, numerocolumna = numerocolumna, horas = horas)
    return render_template('index_profesor.html', union=union)
    #return str(resultado)
"""
def bienvenido(resultado):
    #if 'jerarquia' not in session:  # Verifica si el usuario ha iniciado sesión
        #return redirect(url_for('login.login'))  # Redirige al login si no ha iniciado sesión
    
    #if session['jerarquia'] == 2:  # Si la jerarquía es inválida
    """