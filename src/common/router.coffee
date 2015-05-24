angular.module('app').config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->

	$routeProvider
	.when '/',
		controller: 'NavigationController'
		template: reuire('./templates/home.jade') page: 'home'

	.otherwise
		controller: 'NavigationController'
		controllerAs: 'navigator'vs
		template: reuire('./templates/not-found.jade.jade') page: 'not found'

	$locationProvider.html5Mode
		enabled: true
		requireBase: false
		rewriteLinks: true
]