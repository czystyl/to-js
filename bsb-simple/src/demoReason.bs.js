// Generated by BUCKLESCRIPT VERSION 5.0.4, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("bs-platform/lib/js/curry.js");

function fib(x) {
  if (x < 2) {
    return 1;
  } else {
    return fib(x - 1 | 0) + fib(x - 2 | 0) | 0;
  }
}

function cAdd(a, b, oper) {
  return Curry._2(oper, a, b);
}

function $plus(x, y) {
  return String(x) + String(y);
}

var a = $plus(2, 200);

console.log("Hello, world!" + String(fib(1)));

exports.fib = fib;
exports.cAdd = cAdd;
exports.$plus = $plus;
exports.a = a;
/* a Not a pure module */
