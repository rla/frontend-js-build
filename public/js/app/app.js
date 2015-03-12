var fs = require('fs');
var module1 = require('./lib/module1');
var data = require('../../misc/data.json');

var html = fs.readFileSync(__dirname + '/../../misc/text.html', { encoding: 'utf8' });

console.log(module1.hello());
