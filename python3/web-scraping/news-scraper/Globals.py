import requests
import markdown2

# Ability to Return Markdown File Data as HTML
def convert_to_html(file, app):
	with open(app.root_path+'/pages/'+file) as markdown_file:
		return markdown2.markdown(markdown_file.read())