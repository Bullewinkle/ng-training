require './vendors/scripts/angular.js'

app = angular.module 'app', []

controllers = require './common/scripts/controllers.coffee'

for controllerName, controller of controllers
	app.controller controllerName, ['$scope', controller]
