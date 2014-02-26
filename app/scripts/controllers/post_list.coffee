PostsListControl = ($scope, Post) ->
  $scope.deletePost = (post) ->
    post.$delete(
      (response) ->
        console.log($scope.posts)
        console.log(response)
      (response) ->
        console.log("error in deleting!#{response}")
    )


angular.module('sobrinaTungDotComApp').controller( 'PostsListCtrl',[
  '$scope',
  'Post', 
  PostsListControl
])