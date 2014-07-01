# Toolset

JSHINT = node_modules/.bin/jshint
BROWSERIFY = node_modules/.bin/browserify
LESS = node_modules/.bin/lessc

# Bundle and map files

BUNDLE_JS = public/js/bundle.js
BUNDLE_CSS = public/css/style.css

MAP_JS = public/js/bundle.js.map
MAP_CSS = public/css/style.css.map

all: $(BUNDLE_JS) $(BUNDLE_CSS)

check:
	$(JSHINT) --exclude $(BUNDLE_JS) public/js

$(BUNDLE_JS): public/js/app.js public/js/lib/*.js
	rm -f $@ $@.map
	$(BROWSERIFY) $< -p [minifyify --map bundle.js.map --output $@.map] > $@

$(BUNDLE_CSS): public/css/style.less public/css/config.less
	rm -f $@ $@.map
	$(LESS) --compress --source-map=$@.map --source-map-basepath=public/css/ --source-map-less-inline $< $@

clean:
	rm -f $(BUNDLE_JS) $(MAP_JS)
	rm -f $(BUNDLE_CSS) $(MAP_CSS)

.PHONY: check all clean
