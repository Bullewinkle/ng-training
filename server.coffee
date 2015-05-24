path = require 'path'
express = require 'express'
app = express()
assets = path.join(__dirname, "dist/assets")

port = 9000

app.use '/assets', express.static assets
app.all '/*', (req, res) ->
	res.sendFile(path.join(__dirname, "dist/index.html"))

app.listen port, ->
	console.log "!!!!!!!!!!!!!!! SERVER STARTED ON PORT #{port} !!!!!!!!!!!!!!!"