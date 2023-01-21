from flask import Flask, redirect, url_for, render_template, request, flash

# definir el web server
app = Flask(__name__,template_folder='templates')
# True: para ver por pantalla que pasa:
app.debug = True

# nos abre una html con el formulario
@app.route('/form')
def form():
    return render_template('form.html')


@app.route('/success/<name>')
def success(name):
   return 'welcome %s' % name

# crear métodos
@app.route('/login',methods = ['POST', 'GET'])
def login():
   if request.method == 'POST':
      user = request.form['name']
      return f'welcome to a POST of {user}'
   else:
      return 'welcome to a GET'
 
# crear métodos de 3 tipos; esos metodos no se usan cuando ejecutamos ese archivo main.py
@app.route('/users/<user_id>', methods = ['GET', 'POST', 'DELETE'])
def user(user_id):
    if request.method == 'GET':
        return 'You are running GET method for '+ user_id + ' user'
    if request.method == 'POST':
        return 'You are running POST method for '+ user_id + ' user ' 
    if request.method == 'DELETE':
        return 'You are running DELETE method for '+ user_id + ' user '





 
app.run(host='localhost', port=99)