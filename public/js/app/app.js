var fs = require('fs');
var module1 = require('./lib/module1');
var data = require('../../misc/data.json');

var html = fs.readFileSync(__dirname + '/../../misc/text.html', { encoding: 'utf8' });

var element = document.createElement('div');
element.innerHTML = html;
document.body.appendChild(element);

console.log(module1.hello());
