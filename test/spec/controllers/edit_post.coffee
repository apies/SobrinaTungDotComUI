describe 'Controller: EditPostCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  EditPostCtrl = {}
  scope = {}
  Post = {}
  $httpBackend = {}
  $state = {}
  $stateParams = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Post_, _$state_, _$stateParams_, _$httpBackend_) ->
    $httpBackend = _$httpBackend_
    Post = _Post_
    $state = _$state_
    $stateParams = _$stateParams_
    scope = $rootScope.$new()
    $stateParams.post_id = 1
    EditPostCtrl = $controller 'EditPostCtrl', {
      $scope: scope
    }
    #used for redirects
    $httpBackend.whenGET(/views.*/).respond(200)
    #the route params
    $httpBackend.whenGET('/api/posts/1').respond(200, {id:1})

  it 'should attach a new post to the scope', ->
    expect(scope.post).toBeDefined()

  it 'should query post on id', ->
    $httpBackend.flush()
    expect(scope.post.id).toEqual(1)

  it 'should save an edited post', ->
    $httpBackend.flush()
    expect(scope.post.id).toEqual(1)
    scope.post.content = "<div> Hello Divs </div>"
    $httpBackend.expectPUT('/api/posts/1', {id:1, content: "<div> Hello Divs </div>"}).respond(200, id: 1)
    scope.savePost()
    $httpBackend.flush()
    expect($state.includes("admin.list")).toBeTruthy()
    



  # it 'should be able to save a post and redirect to list', ->
  #   scope.post.content = '<h4>Hello New Post!</h4>'
  #   $httpBackend.expectPOST('/api/posts').respond(200, {id:1, content:'<h4>Hello New Post!</h4>'})
  #   scope.savePost()
  #   $httpBackend.flush()
  #   expect($state.includes("admin")).toBeTruthy()
  #   expect($state.includes("admin.list")).toBeTruthy()
