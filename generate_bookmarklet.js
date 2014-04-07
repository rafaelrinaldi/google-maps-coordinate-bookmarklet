'use strict';

/**
 * Script responsible for generating the HTML file with a link
 * for the bookmarklet to drag and drop.
 */

var util = require('util'),
    fs = require('fs'),
    template = fs.readFileSync('./index.tpl').toString(),
    snippet = fs.readFileSync('./dist/bookmarklet.js').toString(),
    bookmarklet;

snippet = snippet
                // Convert double quotes to single quotes
                .replace(/"/gm, "'")
                // Remove throw statements to avoid quote escaping hell
                .replace(/throw(.*?)\)/gm, '');

// Parse HTML template with Bookmarklet snippet
bookmarklet = util.format(template, snippet);

// Generate HTML file
fs.writeFileSync('./index.html', bookmarklet);
