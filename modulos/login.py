from flask import Flask, render_template, request, render_template, redirect, url_for, session, Blueprint
import mysql.connector

modulo7 = Blueprint("login", __name__)
#--------------------------------------------------CONEXION  A LA DB------------------------------------
print("ola")
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="sau"
)

@modulo7.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        cedula = request.form['LogCedula']
        contraseña = request.form['LogContraseña']

        mycursor = mydb.cursor()
        mycursor2 = mydb.cursor()

        sql = "SELECT * FROM usuarios WHERE Cedula = %s AND Contraseña = %s"
        val = (cedula, contraseña)
        mycursor.execute(sql, val)
        resultado = mycursor.fetchone()

        mycursor.close()

        if resultado:
            # Usuario y contraseña correctos
            session['cedula'] = resultado[10] # Guarda la cedula en la sesión
            session['id_usuario'] = resultado[0]
            session['jerarquia'] = resultado[8]
            session['nombre'] = resultado[2]

            if session['jerarquia'] == "2":
                sql2 = "SELECT * FROM docentes WHERE Cedula = "+ session['cedula']
                mycursor2.execute(sql2)
                resultado2 = mycursor2.fetchone()

                print(resultado2)

                session['ID_Docente'] = resultado2[0]

                if resultado2:  # Verificar que la consulta devolvió un resultado
                    session['ID_Docente'] = resultado2[0]  # Almacenar el ID del docente
                else:
                    session['ID_Docente'] = "pecaste"  # En caso de que no se encuentre

            elif session['jerarquia'] == "1":
                sql2 = "SELECT * FROM docentes WHERE Cedula = "+ session['cedula']
                mycursor2.execute(sql2)
                resultado2 = mycursor2.fetchone()
                
                print(resultado2)

                session['ID_Estudiante'] = resultado2[0]
            
            """
            if session['jerarquia'] == "2":
                sql2 = "SELECT * from docentes where Cedula = '"+ session['cedula'] + "';"
                mycursor2.execute(sql2)
                resultado2 = mycursor.fetchone()
                session['ID_Docente'] = resultado2[0]
            elif session['jerarquia'] == "1":
                sql2 = "SELECT * from estudiantes where Cedula = '"+ session['cedula'] + "';"
                mycursor2.execute(sql2)
                resultado2 = mycursor.fetchone()
                session['ID_Estudiante'] = resultado2[0]
            """



            return redirect(url_for('login.antesala')) # Redirige al panel de control

        else:
            # Usuario o contraseña incorrectos
            return render_template('login.html', mensaje="Credenciales inválidas")

    return render_template('login.html')

@modulo7.route('/antesala')  # Define la ruta /antesala
def antesala():
    if 'cedula' in session:
        return render_template('antesala.html')
    
    else:
        return redirect(url_for('login'))  # Redirige al login si no hay sesión
