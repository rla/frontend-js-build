# frontend-js

Frontend JavaScript workflow with toolset:

 * watch
 * make
 * browserify
 * uglifyify
 * brfs
 * exorcist

Supported features:

 * CommonJS-based JavaScript modules.
 * Single bundled and minified JavaScript file.
 * Same bundle for development and production.
 * Source Maps.
 * Project-local toolset.

## Project structure

 * `Makefile` - build rules, not very abstract but give the idea how tools work.
 * `package.json` - contains local NPM dependencies.
 * `public/js/app/app.js` - the entrypoint JavaScript file.
 * `public/js/bundle.js` - the JavaScript bundle.
 * `public/js/bundle.js.map` - Source Map file for the JavaScript bundle. Loaded by the browser
   when the debugger is open.
 * `public/misc` - directory containing miscellaneous files included in the bundle.

## Tools

The following tools are used:

 * [make](http://en.wikipedia.org/wiki/Make_%28software%29) - the build tool.
 * [watch](http://en.wikipedia.org/wiki/Watch_%28Unix%29) - triggers periodic builds.
 * [browserify](http://browserify.org/) - converts CommonJS-based JavaScript modules into a bundle file.
 * [uglifyify](https://github.com/hughsk/uglifyify) - Browserify plugin that minifies the bundle code.
 * [brfs](https://github.com/substack/brfs) - Browserify plugin that embeds non-JS files into bundles.
 * [exorcist](https://github.com/thlorenz/exorcist) - extracts the source map and places it into a separate file.

Installing tools (assumes that make and watch are already installed):

    npm install

## Build targets

 * all - builds bundle.
 * clean - removes bundle.

Building periodically (2s):

    watch make

## Build dependencies

Due to Makefile specifics, dependencies have to updated manually when
creating new directories under `public/js`.

Current dependencies:

    $(BUNDLE): public/js/app/app.js public/js/app/*.js

Adding a directory `something` under `app` requires the following change:

    $(BUNDLE): public/js/app/app.js public/js/app/*.js public/js/app/something/*.js

This is because `make` cannot handle recursive file patterns.

## Alternative choices

 * uglifyify+exorcist can be replaced with the [minifyify](https://github.com/ben-ng/minifyify) transform.
 * [webpack](https://github.com/webpack/webpack) provides integrated solution for all of this.

## License

The MIT License.
