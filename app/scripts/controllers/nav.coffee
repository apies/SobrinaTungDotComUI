NavControl = ($scope, $location) ->
  alias_attrs = {home: '/'}
  $scope.links = [
      'home'
      'about'
      'contact'
    ]
  $scope.alias = (attr) -> 
    attribute = alias_attrs[attr]
    if attribute? then attribute else attr
  $scope.isActive = (locString) -> 
    if $location.path().match(///#{locString}///)
      'active' 
    else 
      ''


angular.module('sobrinaTungDotComApp').
  controller('NavCtrl', [
    '$scope',
    '$location',
    NavControl
  ])

