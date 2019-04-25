
var exec = require('cordova/exec');

var PLUGIN_NAME = 'eventhook';

var eventhook = {
  echo: function(phrase, cb) {
    exec(cb, null, PLUGIN_NAME, 'echo', [phrase]);
  },
  getDate: function(cb) {
    exec(cb, null, PLUGIN_NAME, 'getDate', []);
  },
  newEvent: function(cb) {
    exec(cb, null, PLUGIN_NAME, 'newEvent', [a,b,c,d]);
  }
};

module.exports = eventhook;
