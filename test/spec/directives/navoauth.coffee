'use strict'

describe 'Directive: navOauth', () ->

  # load the directive's module
  beforeEach module 'sobrinaTungDotComApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<nav-oauth></nav-oauth>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the navOauth directive'
