import requests
from flask import Flask
from News import News
import Globals
from NewsScraper import NewsScraper

# Create the Flask App Object
app = Flask(__name__)

# Create the Endpoints
@app.route('/')
def index(): # This endpoint returns the documentation for the api
	return Globals.convert_to_html('index.md', app)

@app.route('/news/all')
def get_news(): # This endpoint returns a json object full of news
	scraper = NewsScraper() # Create an Instance of the NewsScraper Object
	scraper.generate() # Generate the News Objects
	return scraper.get() # Return the JSON

# Run the App
if __name__ == '__main__':
	app.run(host='0.0.0.0', port=50, debug=True) # Run the App on 0.0.0.0:50