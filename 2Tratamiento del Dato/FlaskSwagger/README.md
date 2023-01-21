# swagger

Swagger and Flask exercises
# Exercise client - Requests python.
On this exercise the only goal is to be a client as developer using python and requests.
Run the following commands inside the exercise folder:

>pip install -r requirements.txt

>python main.py

# Exercise 0 - Flask python. First local webpage

On this exercise the only goal is to create your first local webpage using python and flask.
Run the following commands inside the exercise folder:

>pip install -r requirements.txt

>python main.py

Then open a url on http://localhost:99


# Exercise 1 - Flask python

On this exercise the only goal is to create your first API where you will invoke different services internally

>pip install -r requirements.txt

>python main.py

Then open a url on http://localhost:99/form

Class Exercise - 10-15 min:
- Modify /users/<user_id> call to split it according to the methods.

# Exercise 2 - Flask python into docker

On this exercise the only goal is to create your first API around a docker file

>docker build -t python-docker .

>docker run -p 5000:5000 python-docker

Then open a url on http://localhost:5000/form

# Exercise 3 - Swagger python

Let's explore swagger together

>docker build -t swagger_server .

>docker run -p 8080:8080 swagger_server

Then open a url on http://localhost:8080/v2/ui/#/store

Nota: https://editor.swagger.io/

# Exercise 4 - Create your first API using swagger
Imagine that you work into industry compony where there is a robot. 
We have a sensor that is monitoring robot temperature via real-time and saving into a database.
Info from sensor;
- id del sensor - string
- fechamuestreo - string
- unidad - string
- medicion - number
- tipo - string

Our api needs create the next methods;
> /getHistoricalMeassuresBySensorAndType/{sensor}/{start}/{end}:
sensor -> string
start -> string
end-> string

The methods should return;
- code (id del sensor) - string
- fechamuestreo - string
- unidad - string
- medicion - number
- tipo - string

> /getLastMeassureBySensor/{sensor}:
sensor -> string
The methods should return;
- code (id del sensor) - string
- fechamuestreo - string
- unidad - string
- medicion - number
- tipo - string

Steps:
- Create your yaml
- Check the format into https://editor.swagger.io/
- Create a swagger_server with python-flask lenguage



# Exercise 5

Now we both work together

Let's play Blackjack!!!
