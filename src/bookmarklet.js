'use strict';

var Parser = require('google-maps-coordinate-parser');

/**
 * Will parse the coordinate and prompt it as a message using `alert()`
 */
(function(exports, url) {
  var coordinate = Parser.parse(url),
      message = 'Current map coordinate is: ' + coordinate.toString();

  exports.alert(message);

})(window, location.href);
