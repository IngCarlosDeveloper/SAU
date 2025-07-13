from flask import Flask, render_template, redirect, url_for, session, Blueprint

modulo9 = Blueprint("salir", __name__)

@modulo9.route('/salir')
def salir():
    session.clear()
    return redirect(url_for('login.login'))