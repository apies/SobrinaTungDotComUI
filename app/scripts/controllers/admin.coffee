'use strict'

AdminControl = ($scope, Post) ->
  $scope.nothing = 'nothing'

  # $scope.post = []
  # Post.query((posts) ->
  #   $scope.posts = posts
  # )


angular.module('sobrinaTungDotComApp').controller( 'AdminCtrl',[
  '$scope', 
  AdminControl
])

