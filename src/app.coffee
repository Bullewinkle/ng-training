require '../bower_components/angular'
require '../bower_components/angular-route'

config = require './config'

app = angular.module 'app', ['ngRoute']
appTemplates = require './common/templates'
appControllers = require './common/controllers/'
# appRouter = require './common/router'

# pages = require './pages'

