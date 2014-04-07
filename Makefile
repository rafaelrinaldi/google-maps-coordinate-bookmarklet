# Binaries
browserify=./node_modules/.bin/browserify
uglifyjs=./node_modules/.bin/uglifyjs

# Folders
src=./src/bookmarklet.js
dist=./dist/bookmarklet.js

all: build bookmarklet
	@echo 'Done at' `date +%H:%M`

# 1. Compiles source to vanilla JavaScript using Browserify
# 2. Compress the output using UglifyJS
build:
	@echo 'Building browser version...'
	@$(browserify) $(src) -o $(dist) --im
	@$(uglifyjs) $(dist) -o $(dist)

# 1. Generate the html file containing the bookmarklet
# 2. Opens the generated html file in the browser
bookmarklet:
	@echo 'Generating bookmarklet...'
	@node ./generate_bookmarklet.js
	@open './index.html'
