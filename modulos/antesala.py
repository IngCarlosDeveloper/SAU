from flask import Flask, render_template, request, render_template, redirect, url_for, session, Blueprint
import mysql.connector

modulo6 = Blueprint("antesala", __name__)

@modulo6.route('/bienvenido')  # Página de bienvenida (protegida)
def bienvenido():
    if 'usuario' not in session:  # Verifica si el usuario ha iniciado sesión
        return redirect(url_for('login'))  # Redirige al login si no ha iniciado sesión

    vis_es = "hidden"
    vis_prof = "hidden"
    vis_coor = "hidden"

    if session['jerarquia'] == 1:
        vis_es = ""
    elif session['jerarquia'] == 2:
        vis_prof = ""
    elif session['jerarquia'] == 3:
        vis_coor =""

    return render_template('bienvenido.html', vis_es = vis_es, vis_prof = vis_prof, vis_coor = vis_coor)
