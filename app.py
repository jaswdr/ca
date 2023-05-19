from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello World!'


if __name__ == '__main__':
    app.run(host="server.localhost", port="8080", ssl_context=('server.crt', 'server.key'))