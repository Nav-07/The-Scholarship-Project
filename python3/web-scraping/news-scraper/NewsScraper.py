import requests
from bs4 import BeautifulSoup
from News import News
import json
from flask import jsonify

# URLs
news_url = 'https://www.9news.com.au/' # The 9News API

class NewsScraper:
	# Init: Takes the Count
	def __init__(self):
		self.news = [] # These are the stories

	# Generate: Generates the News Based on the Variables Defined Outside the Class
	def generate(self):
		# Get the HTML Document
		html_document = requests.get(news_url).text

		# Create Beautiful Soup Object Instance
		soup = BeautifulSoup(html_document) 

		# Find the Desired Tags
		tags = soup.find_all(class_='story-block story-block--has-media') # Find the stories

		# Collect the Data
		for story in tags: # Go Through all the tags
			name = story.find(class_='story__headline__text') # Find the Name Object
			url = name.find_parent(href=True) # Get The Parent of the Name
			self.news.append(News(name.get_text(), url['href']).__dict__) # Convert url to href

	# Get: Converts the Data to JSON Format
	def get(self):
		return jsonify(self.news) # jsonify the list of news