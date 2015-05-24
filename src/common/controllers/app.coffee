app = angular.module('app')
app.controller 'AppController', ($route, $routeParams, $location) ->
	
	@$route = $route
	@$location = $location
	@$routeParams = $routeParams