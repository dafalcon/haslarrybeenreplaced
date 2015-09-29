all: site

site:
	git submodule update
	hugo --theme=artists

server: site
	hugo server --theme=artists --buildDrafts

publish: all
	git checkout gh-pages
	mv public/* .
	rm -r public
	git status
