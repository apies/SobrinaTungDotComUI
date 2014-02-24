'use strict'

angular.module('sobrinaTungDotComApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'ui.tinymce',
  'sobrinaTungDotComApp:services',
  'ngRoute'
])
  .config( ($stateProvider, $urlRouterProvider) ->
    #For any unmatched url, redirect to /
    #will later be login :)
    $urlRouterProvider.otherwise("/")

    $stateProvider.state('main',
      url: "/"
      templateUrl: "views/main.html"
      controller: "MainCtrl"
      # views: [
      #   "navController": {template: "views/nav.html"}
      # ]
    ).state('login', # i need to write acceptance test for this
      url: "/admin/login/:userId"
      template: ''
      controller: 'LoginCtrl'
      # controller: ($rootScope, $stateParams, $state, User) ->
      #   id = $stateParams.userId
      #   User.get({id}, (user) ->
      #     $rootScope.currentUser = user
      #     $state.go('main')
      #   )
    ).state('admin',
      url: '/admin'
      templateUrl: "views/admin.html"
      controller: 'AdminCtrl'
    ).state('admin.list',
      url: "/list"
      templateUrl:"views/_admin_posts_list.html"
      controller: [ '$scope', 'Post', ($scope, Post) ->
        Post.query((posts) ->
          $scope.posts = posts
        )
      ]
        #convert to filter
        # $scope.toTrusted = (html_code) -> 
        #   $sce.trustAsHtml(html_code)
    
    ).state('admin.newPost'
      url: '/new_post',
      templateUrl: "views/_admin_new_post.html"
      controller: 'NewPostCtrl'
    ).state('admin.editPost',
      url: '/edit_post/:post_id'
      templateUrl: "views/_admin_new_post.html"
      controller: 'EditPostCtrl'
    )

  )
    







