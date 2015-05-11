# require './vendors/scripts/angular.js'
require '../bower_components/angular'
require '../bower_components/angular-route'

# require './es6-test.js'

appTemplates = require './common/templates/index.coffee'
appControllers = require './common/scripts/controllers.coffee'

app = angular.module 'app', ['ngRoute']

app.controller name, constructor for name, constructor of appControllers

app.config ($routeProvider, $locationProvider) ->
	$routeProvider

	.when '/',
		controller: 'NavigationController'
		template: appTemplates('./home.jade') page: 'home'
	.when '/posts',
		controller: 'NavigationController'
		template: appTemplates('./posts.jade') page: 'posts'
	.when '/about',
		controller: 'NavigationController'
		template: appTemplates('./about.jade') page: 'about'
	.when '/contacts',
		controller: 'NavigationController'
		template: appTemplates('./contacts.jade') page: 'contacts'
	.when '/test',
		controller: 'NavigationController'
		template: appTemplates('./test.jade') page: 'test'

	$locationProvider.html5Mode
		enabled: true
		requireBase: false
		rewriteLinks: true

	return

