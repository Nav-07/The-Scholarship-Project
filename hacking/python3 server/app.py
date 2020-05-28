from flask import Flask

# Create the Flask App
app = Flask(__name__)

# Create the Endpoints
@app.route('/')
def index():
    return 'Hello Nav, This is the Python3 Server'

# Run the app
if __name__ == '__main__':
    app.run(debug=True, port=51, host='0.0.0.0')