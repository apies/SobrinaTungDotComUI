'use strict'

angular.module('sobrinaTungDotComApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'sobrinaTungDotComApp:services'
])
  .config( ($stateProvider, $urlRouterProvider) ->
    #For any unmatched url, redirect to /
    #will later be login :)
    $urlRouterProvider.otherwise("/")

    $stateProvider.state('main',
      url: "/"
      templateUrl: "views/main.html"
      controller: "MainCtrl"
    )

  )
    











      #   templateUrl: 'views/main.html'
      #   controller: 'MainCtrl'
      # .otherwise
      #   redirectTo: '/'
