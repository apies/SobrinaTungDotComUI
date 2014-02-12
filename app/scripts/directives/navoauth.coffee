angular.module('sobrinaTungDotComApp:directives', ['ngRoute'])
  .directive('navOauth', () ->
    templateUrl: "views/nav.html"
    restrict: 'E'
    replace: true
    #probably need to pull the controller out to test
    controller: ($location, $attrs, $scope) ->
      $scope.links = $attrs.links.split(/\s+/)
      $scope.brand = $attrs.brand
      $scope.isActive = (locString) ->
        #this seems too complex, im fighting the framework doing something wrong
        if $location.path() is "/#{locString}" or $location.path() is "#{locString}"  
          'active' 
        else 
          ''
      alias_attrs = JSON.parse($attrs.alias)
      $scope.alias = (attr) ->
        aliased_attr = alias_attrs["#{attr}"]
        if aliased_attr then aliased_attr else attr
  )
