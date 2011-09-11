
test:
	@expresso -I lib test/*

coverage:
	@expresso -g -I lib --cov test/*
	@rm -rf lib-cov

watchn:
	@bin/watchn .watchn

scss:
	sass examples/scss/style.scss > examples/scss/style.css

sass:
	sass examples/sass/style.sass > examples/sass/style.css

haml:
	@haml -eq examples/haml/index.haml examples/haml/index.html

stylus:
	@stylus < examples/stylus/style.styl > examples/stylus/style.css

jade:
	@jade < examples/jade/index.jade > examples/jade/index.html

markdown:
	@markdown -o examples/markdown/index.html examples/markdown/index.md

uglify:
	@cat examples/javascripts/src/file1.js > examples/javascripts/app.js
	@cat examples/javascripts/src/file2.js >> examples/javascripts/app.js
	@uglifyjs -v -o examples/javascripts/app.min.js examples/javascripts/app.js

docs:
	@docco lib/*.js

publish: coverage docs

noop:


.PHONY: test coverage watchn scss sass haml stylus jade markdown uglify docs publish noop

