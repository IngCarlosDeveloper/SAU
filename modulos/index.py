from flask import Flask, render_template, request, session, Blueprint, redirect, url_for, abort

modulo9 = Blueprint('index', __name__)

if session['jerarquia'] == 3:

    @modulo9.route('/index')  # Página de bienvenida (protegida)
    def bienvenido():
        if 'usuario' not in session:  # Verifica si el usuario ha iniciado sesión
            return redirect(url_for('login'))  # Redirige al login si no ha iniciado sesión
    
        if session['jerarquia'] == 3:  # Si la jerarquía es inválida
            return render_template('index.html')

    