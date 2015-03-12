(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var module1=require("./lib/module1"),data=require("../../misc/data.json"),html="<div>Some content from an HTML template file</div>\n",element=document.createElement("div");element.innerHTML=html,document.body.appendChild(element),console.log(module1.hello());


},{"../../misc/data.json":3,"./lib/module1":2}],2:[function(require,module,exports){
exports.hello=function(){return"Hello World!"};


},{}],3:[function(require,module,exports){
module.exports={
    "option": 123
}

},{}]},{},[1])


//# sourceMappingURL=bundle.js.map