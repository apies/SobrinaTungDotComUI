LoginControl = ($rootScope, $stateParams, $state, User) ->
  id = $stateParams.userId
  User.get({id}, (user) ->
    $rootScope.currentUser = user
    $state.go('main')
  )
  $rootScope.awesomeThings = [1,2,3]


angular.module('sobrinaTungDotComApp').controller( 'LoginCtrl',[
  '$rootScope',
  '$stateParams',
  '$state',
  'User', 
  LoginControl
])
