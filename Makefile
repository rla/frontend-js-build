all: public/js/bundle.js public/css/style.css

check:
	node_modules/.bin/jshint --exclude public/js/bundle.js public/js

public/js/bundle.js: public/js/app.js public/js/lib/*.js
	rm -f $@ $@.map
	node_modules/.bin/browserify $< -p [minifyify --map bundle.js.map --output $@.map] > $@

public/css/style.css: public/css/style.less public/css/config.less
	rm -f $@ $@.map
	lessc --compress --source-map=$@.map --source-map-basepath=public/css/ --source-map-less-inline $< $@

clean:
	rm -f public/js/bundle.js public/js/bundle.js.map
	rm -f public/css/style.css public/css/style.css.map

.PHONY: check all clean
