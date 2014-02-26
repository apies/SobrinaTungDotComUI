'use strict'

describe 'Controller: AdminCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  AdminCtrl = {}
  scope = {}
  Post = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Post_, _$httpBackend_) ->
    $httpBackend = _$httpBackend_
    Post = _Post_
    scope = $rootScope.$new()
    AdminCtrl = $controller 'AdminCtrl', {
      $scope: scope
    }
    #$httpBackend.whenGET('/api/posts').respond(200, [1,2,3])

  it 'should be able to delete posts', () ->
    post = new Post(id:123, content: 'boasjdsad')
    scope.deletePost(post)
    $httpBackend.expectDELETE('/api/posts/123').respond(200, {message: "deleted post"})
    $httpBackend.flush()

