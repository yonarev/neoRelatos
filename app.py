from flask import Flask, url_for, redirect,flash
from flask import render_template, request
from flask_mysqldb import MySQL
from libreria import fechaAhora, horaAhora, idAhora

app=Flask(__name__)

# CONEXION A BD
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "q"
mysql = MySQL(app)

#SETING DE SESSION
app.secret_key='clave secreta'

# MENU PPAL
# localhost:3000/
@app.route("/")
def index():
    # VALIDA SQL ANTES DE PRESENTAR LA PAGINA
    cur=mysql.connection.cursor()
    cur.execute('SELECT * FROM bitacora')
    data=cur.fetchall() #es una tupla
    return render_template('index.html', notas=data) # PRESENTA PAGINA PPAL

# AGREGA NOTA
# localhost:3000/addNota
@app.route('/addNota', methods=['POST'])
def addNota():
    if request.method == 'POST':
        idBit=idAhora()
        fecha=fechaAhora()
        hora=horaAhora()
        titulo=request.form['titulo']
        nota=request.form['nota']
        cur=mysql.connection.cursor()
        cur.execute('INSERT INTO bitacora (idBit,fecha,hora,titulo,nota) VALUES (%s,%s,%s,%s,%s)',(idBit,fecha,hora,titulo,nota))
        mysql.connection.commit()
        flash('Nota grabada ok con IdBit: '+idBit)
        return redirect(url_for('index')) # redirecciona al indice

# EDITA NOTA primero la busca
# localhost:3000/editaNota
@app.route("/edit/<id>")
def get_nota(id):
    cur=mysql.connection.cursor()
    cur.execute('SELECT * FROM bitacora WHERE idBit=%s', (id,))
    data=cur.fetchall() 
    return render_template('editaNota.html', nota=data[0])

# ACTUALIZA AL EDITAR
@app.route("/update/<string:id>", methods=['POST'])
def update(id):
    if request.method == "POST":
        titulo=request.form['titulo']
        nota=request.form['nota']
        cur=mysql.connection.cursor()
        cur.execute("""
        UPDATE bitacora 
        SET titulo = %s,
            nota = %s
        WHERE idBit = %s          
        """,(titulo,nota,id))
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('index')) # redirecciona al indice

# BORRA NOTA
# localhost:3000/borraNota/id
@app.route("/delete/<string:id>")
def deleteNota(id):
    cur=mysql.connection.cursor()
    cur.execute('DELETE FROM bitacora WHERE idBit=%s', (id,))
    mysql.connection.commit()
    flash('Nota eliminada con ID: {}'.format(id))
    return redirect(url_for('index'))

# VALIDA SI ES ARCHIVO PPAL 
if __name__ == '__main__':
    app.run(port=3000,debug=True)