all: site

site:
	hugo --theme=artists

server: site
	hugo server --theme=artists --buildDrafts

publish: all
	git checkout -b gh-pages
  cp -R public/* .
