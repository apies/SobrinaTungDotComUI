'use strict'

describe 'Controller: NavCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  User = {}
  NavCtrl = {}
  scope = {}
  $location = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _$location_) ->
    $location = _$location_
    scope = $rootScope.$new()
    NavCtrl = $controller 'NavCtrl', {
      $scope: scope
    }

  it 'should attach a list of links to the scope', () ->
    expect(scope.links.length).toBe 3

  it 'should know how to alias a link', () ->
    expect(scope.alias('home')).toBe('/')

  it 'should know whether a link is active', () ->
    $location.path('/about')
    expect(scope.isActive('about')).toBe('active')
    expect(scope.isActive('home')).toNotBe('active')
    $location.path('/')
    expect(scope.isActive('about')).toBe('')

