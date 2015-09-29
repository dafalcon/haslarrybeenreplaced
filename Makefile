all: site

site:
	hugo --theme=artists

server: site
	hugo server --theme=artists --buildDrafts
