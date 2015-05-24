app = angular.module('app')
app.controller 'BlogController', ->
	@prop = 'prop'

	# @posts = 'post'
	@posts = ['post1', 'post2', 'post3']