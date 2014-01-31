'use strict'

angular.module('sobrinaTungDotComApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'sobrinaTungDotComApp:services'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
