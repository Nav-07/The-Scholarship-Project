from bs4 import BeautifulSoup
import requests
from flask import *
import json
import string

# Import the html document
html_doucment = requests.get('https://www.worldometers.info/coronavirus/').text

# Create the BeautifulSoup
soup = BeautifulSoup(html_doucment, 'html.parser')

# Get the Case Count
cases = soup.select('.maincounter-number')[0].get_text()
deaths = soup.select('.maincounter-number')[1].get_text()

# Create the Json Object
int_cases = cases.replace('\n', '')
int_deaths = deaths.replace('\n', '')
final_cases = int_cases.replace(' ', '').replace(',', '')
final_deaths = int_deaths.replace(' ', '').replace(',', '')

data = {}
data['cases'] = int(final_cases)
data['deaths'] = int(final_deaths)

# Create the Flask Object
app = Flask(__name__)

# Create the Endpoints
@app.route('/get')
def index():
	return jsonify(data)

# Run the app
if __name__ == '__main__':
	app.run(debug=True)

# python3 app.py

