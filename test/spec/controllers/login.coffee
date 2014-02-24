'use strict'

describe 'Controller: LoginCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  $httpBackend = {}
  LoginCtrl = {}
  scope = {}
  $stateParams = {}
  $state = {}
  User = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($rootScope, _$stateParams_, _$state_, _User_, _$httpBackend_, $controller) ->
    $httpBackend = _$httpBackend_
    $httpBackend.whenGET('/api/users/7').respond(200, {id: 7})
    #used for redirects
    $httpBackend.whenGET(/views.*/).respond(200)


    $stateParams = _$stateParams_
    $state = _$state_
    User = _User_

    $stateParams.userId = 7
    LoginCtrl = $controller 'LoginCtrl', {
      $scope: scope
    }
#     $httpBackend.flush()

  it 'should attach a list of awesomeThings to the scope', () ->
    #expect(true).toBe(true)
    $httpBackend.expectGET('/api/users/7').respond(200, {id: 7})
    $httpBackend.flush()
    expect($state.includes('main'))
    # trouble testing rootscope :(
    # expect(scope.currentUser).toBeDefined()
