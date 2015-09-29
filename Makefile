all: site

site:
	hugo --theme=artists

server: site
	hugo server --theme=artists --buildDrafts

publish: all
	it checkout -b gh-pages
	cp -R public/* .
