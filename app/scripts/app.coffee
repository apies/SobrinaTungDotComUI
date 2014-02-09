'use strict'

angular.module('sobrinaTungDotComApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'sobrinaTungDotComApp:services',
  'sobrinaTungDotComApp:directives'
])
  .config( ($stateProvider, $urlRouterProvider) ->
    #For any unmatched url, redirect to /
    #will later be login :)
    $urlRouterProvider.otherwise("/")

    $stateProvider.state('main',
      url: "/"
      templateUrl: "views/main.html"
      controller: "MainCtrl"
    ).state('login', # i need to write acceptance test for this
      url: "/admin/login/:userId"
      template: ''
      controller: ($scope, $stateParams, $state, $rootScope, User) ->
        id = $stateParams.userId
        User.get({id}, (user) ->
          $rootScope.currentUser = user
        )
        $state.go('main')
    ).state('admin',
      url: '/admin'
      templateUrl: "views/admin.html"
      controller: 'AdminCtrl'
    )

  )
    







