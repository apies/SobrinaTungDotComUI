EditPostControl = ($scope, Post, $state, $stateParams) ->
  $scope.post = Post.get(id: $stateParams.id)
  
  $scope.savePost = ->
    $scope.post.$update( (post, headers) ->
      $state.go('admin.list')
    )

  $scope.tinymceOptions =
    #theme: "modern"
    plugins: [
      "advlist autolink lists link image charmap print preview hr anchor pagebreak"
      "searchreplace wordcount visualblocks visualchars code fullscreen"
      "insertdatetime media nonbreaking save table contextmenu directionality"
      "emoticons template paste textcolor"
    ]
    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
    toolbar2: "print preview media | forecolor backcolor emoticons"
    image_advtab: true
    height: "200px"
    width: "650px"



angular.module('sobrinaTungDotComApp').
  controller('EditPostCtrl',[
    '$scope',
    'Post',
    '$state',
    '$stateParams', 
    EditPostControl
  ])

