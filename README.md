# frontend

My baseline project for frontend work (2014). It has the following features/aspects:

 * CommonJS-based JavaScript modules.
 * Less as the CSS preprocessor.
 * Single bundled and minified JavaScript file.
 * Single bundled and minified CSS file.
 * JavaScript and Less source maps.
 * JSHint checks on JavaScript.
 * Project-local toolset from NPM.

## Project structure

 * `Makefile` - build rules, not very abstract but give the idea how tools work.
 * `package.json` - contains local dependencies (see Tools) for NPM.
 * `public/css/style.less` - the entrypoint Less file.
 * `public/css/style.css` - the CSS bundle (built by Less).
 * `public/css/style.css.map` - Source Map file for the CSS bundle. Loaded by browser when
   the debugger is open.
 * `public/js/app.js` - the entrypoint JavaScript file.
 * `public/js/bundle.js` - the JavaScript bundle (built by Browserify)
 * `public/js/bundle.js.map` - Source Map file for the JavaScript bundle. Loaded by browser
   when the debugger is open.

## Tools

The following tools are used:

 * [make](http://en.wikipedia.org/wiki/Make_%28software%29) - the build tool.
 * [browserify](http://browserify.org/) - converts CommonJS-based JavaScript modules into a bundle file.
 * [minifyify](https://github.com/ben-ng/minifyify) - plugin for browserify that minifies bundle while transforming the source map.
 * [jshint](http://www.jshint.com/) - JavaScript lint.
 * [less](http://lesscss.org) - CSS preprocessor.

## License

The MIT License.
