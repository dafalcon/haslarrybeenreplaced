CURRENT_COMMIT=$(shell git rev-list --max-count=1 HEAD)

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
	rm -rf themes
	git status
	git add *
	git ci -a -m ${CURRENT_COMMIT}
	git push origin -u gh-pages
	git checkout master

