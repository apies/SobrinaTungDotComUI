'use strict'

angular.module('sobrinaTungDotComApp:directives', ['ngRoute'])
  .directive('navOauth', () ->
    templateUrl: "views/nav.html"
    restrict: 'E'
    replace: true
    controller: ($location, $attrs, $scope) ->
      $scope.links = $attrs.links.split(/\s+/)
      $scope.brand = $attrs.brand
      $scope.isActive = (locString) ->
        if $location.path() is locString then 'active' else ''
      alias_attrs = JSON.parse($attrs.alias)
      $scope.alias = (attr) ->
        aliased_attr = alias_attrs[attr]
        if aliased_attr
          aliased_attr
        else
          attr

      #console.log(JSON.parse(alias_attrs)) 
    #link: (scope, iElement, iAttrs) ->
     # ""
  )
