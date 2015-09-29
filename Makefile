all: site

site:
	git submodule update
	hugo --theme=artists

server: site
	hugo server --theme=artists --buildDrafts

publish: all
	git status | grep 'nothing to commit'
	git checkout gh-pages
	mv public/* .
	rm -r public
	git status
