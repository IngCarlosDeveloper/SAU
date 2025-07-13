from flask import Flask, render_template, request, render_template, redirect, url_for, session, Blueprint
import mysql.connector

modulo3 = Blueprint("logout", __name__)

@modulo3.route('/logout')  # Cerrar sesión
def logout():
    session.pop('usuario', None)  # Elimina el usuario de la sesión
    return redirect(url_for('login'))  # Redirige al login

