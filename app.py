'''
This is my first trial to flask.
Thanks to https://opensource.com for a nice
article on flask
'''

from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Hello Guys, How are you doing?"

@app.route('/covid19')
def hello():
    return 'It is a deadly disease, Stay Safe!!'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=7000)
