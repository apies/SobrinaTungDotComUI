# 'use strict'

# describe 'Controller: AdminCtrl', () ->

#   # load the controller's module
#   beforeEach module 'sobrinaTungDotComApp'

#   AdminCtrl = {}
#   scope = {}
#   Post = {}
#   $httpBackend = {}

#   # Initialize the controller and a mock scope
#   beforeEach inject ($controller, $rootScope, _Post_, _$httpBackend_) ->
#     $httpBackend = _$httpBackend_
#     Post = _Post_
#     scope = $rootScope.$new()
#     AdminCtrl = $controller 'AdminCtrl', {
#       $scope: scope
#     }
#     #$httpBackend.whenGET('/api/posts').respond(200, [1,2,3])

#   it 'should attach a list of awesomeThings to the scope', () ->
#     $httpBackend.flush()
#     expect(scope.posts).toNotBeNull
#     expect(scope.posts.length).toBe(3)

