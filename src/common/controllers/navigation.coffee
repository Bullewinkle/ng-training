app = angular.module('app')
app.controller 'NavigationController', ->

	@hlinks = [
		href: '/'
		text: 'Home'
	,
		href: '/blog'
		text: 'Blog'
	,
		href: '/about'
		text: 'About'
	,
		href: '/contacts'
		text: 'Contacts'
	,
		href: '/test'
		text: 'Test page'
	,
		href: '/wat?'
		text: 'Wat?'
	]