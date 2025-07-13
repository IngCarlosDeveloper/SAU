from flask import Flask, render_template, request, render_template, redirect, url_for, session
from modulos.numero_semestre import modulo2
from modulos.buscador import modulo1
from modulos.guardar_semestre import modulo3
from modulos.insertar_seccion import modulo4
from modulos.insertar_carrera import modulo5
from modulos.antesala import modulo6
from modulos.login import modulo7
from modulos.registro import modulo8
from modulos.salir import modulo9
from modulos.index_profesor import modulo10


import os

app = Flask(__name__)
app.secret_key = "1"

app.register_blueprint(modulo1)
app.register_blueprint(modulo2)
app.register_blueprint(modulo3)
app.register_blueprint(modulo4)
app.register_blueprint(modulo5)
app.register_blueprint(modulo6)
app.register_blueprint(modulo7)
app.register_blueprint(modulo8)
app.register_blueprint(modulo9)
app.register_blueprint(modulo10)


@app.route('/index')
def principal():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=True)