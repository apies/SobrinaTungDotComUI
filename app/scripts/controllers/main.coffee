MainControl = ($scope, Post, $state, $stateParams) ->
  $scope.posts = Post.query()


angular.module('sobrinaTungDotComApp').
  controller('MainCtrl', [
    '$scope',
    'Post',
    '$state',
    '$stateParams', 
    MainControl
  ])