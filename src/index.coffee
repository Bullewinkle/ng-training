console.log 'start'

require './common/styles/index.styl'

renderLayout = (path) ->
	body = document.body
	el = document.createElement 'div'
	if path
		for key, t of require path
			el.innerHTML+= t()
	body.innerHTML+= el.innerHTML
	el.innerHTML = ''
	el.remove()


renderLayout './common/templates/index.coffee'

require './app.coffee'

