angular.module('app').config ['$routeProvider', ($routeProvider) ->
	
	$routeProvider
	.when '/blog',
		controller: 'BlogController'
		controllerAs: 'blog'
		template: require('./blog/blog.jade') page: 'blog'

	.when '/about',
		controller: 'NavigationController'
		controllerAs: 'c'
		template: appTemplates('./about.jade') page: 'about'

	.when '/contacts',
		controller: 'NavigationController'
		controllerAs: 'c'
		template: appTemplates('./contacts.jade') page: 'contacts'

	.when '/test',
		controller: 'NavigationController'
		controllerAs: 'c'
		template: appTemplates('./test.jade') page: 'test'

]