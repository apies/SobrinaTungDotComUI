
angular.module('sobrinaTungDotComApp:services', ['ngResource']).factory('PostBase',  [ '$resource', ($resource) ->
  $resource('/api/posts/:id', {id: "@id"}, {update: {method: "PUT"}})
]) 

angular.module('sobrinaTungDotComApp:services').factory( 'Post', ['PostBase', (PostBase) ->
  class Post extends PostBase
    constructor: (attrs) ->
      super
      @postProcess(attrs)

    postProcess: (attrs) -> 

])
