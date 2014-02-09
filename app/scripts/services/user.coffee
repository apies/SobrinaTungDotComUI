
angular.module('sobrinaTungDotComApp:services').factory('UserBase',  [ '$resource', ($resource) ->
  $resource('/api/users/:id', {id: "@id"}, {update: {method: "PUT"}})
]) 

angular.module('sobrinaTungDotComApp:services').factory( 'User', ['UserBase', (UserBase) ->
  class User extends UserBase
    constructor: (attrs) ->
      super
      @postProcess(attrs)

    postProcess: (attrs) -> 

])
