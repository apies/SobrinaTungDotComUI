describe 'Controller: NewPostCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  NewPostCtrl = {}
  scope = {}
  Post = {}
  $httpBackend = {}
  $state = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Post_, _$state_, _$httpBackend_) ->
    $httpBackend = _$httpBackend_
    Post = _Post_
    $state = _$state_
    scope = $rootScope.$new()
    NewPostCtrl = $controller 'NewPostCtrl', {
      $scope: scope
    }
    #used for redirects
    $httpBackend.whenGET(/views.*/).respond(200)

  it 'should attach a new post to the scope', ->
    expect(scope.post).toBeDefined()

  it 'should be able to save a post and redirect to list', ->
    scope.post.content = '<h4>Hello New Post!</h4>'
    $httpBackend.expectPOST('/api/posts').respond(200, {id:1, content:'<h4>Hello New Post!</h4>'})
    scope.savePost()
    $httpBackend.flush()
    expect($state.includes("admin")).toBeTruthy()
    expect($state.includes("admin.list")).toBeTruthy()




