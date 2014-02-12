describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'sobrinaTungDotComApp'

  MainCtrl = {}
  scope = {}
  Post = {}
  $httpBackend = {}
  $state = {}
  $stateParams = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Post_, _$state_, _$stateParams_, _$httpBackend_) ->
    posts_response = ({id: n} for n in [1..25])
    
    $httpBackend = _$httpBackend_
    $httpBackend.whenGET('/api/posts').respond(200, posts_response)
    #used for redirects
    $httpBackend.whenGET(/views.*/).respond(200)
    Post = _Post_
    $state = _$state_
    $stateParams = _$stateParams_
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should attach posts to the scope', ->
    $httpBackend.flush()
    expect(scope.posts.length).toEqual(25)

