path = require('path')

SRC = path.join(__dirname, 'src')
DIST = path.join(__dirname, 'dist')

module.exports =

	devtool: 'eval'
	cache: true
	debug: true

	entry:
		"#{SRC}/index.coffee"

	output:
		path: DIST
		filename: 'bundle.js'

	module:

		loaders: [
			test: /\.css$/
			loaders: ['style','css']
		,
			test: /\.styl$/
			loaders: ['style','css', 'stylus']
		,
			test: /\.jade$/
			loader: 'jade'
		,
			test: /\.coffee$/
			loader: 'coffee'			

		]