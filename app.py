from flask import Flask

app = Flask(__name__)


@app.route('/flaskapp')
def hello_world():
    return 'Hello from Docker container !!'


if __name__ == '__main__':
    app.run(host='0.0.0.0',port="2001")
