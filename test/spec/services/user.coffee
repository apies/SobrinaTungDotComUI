describe 'Service: User', () ->

  # load the service's module
  beforeEach module 'sobrinaTungDotComApp:services'

  # instantiate service
  User = {}
  $httpBackend = {}
  $resource = {}
  beforeEach inject ( _$resource_, _$httpBackend_, _User_) ->
    $resource = _$resource_
    $httpBackend = _$httpBackend_
    User = _User_

  it 'should instantiate a new User', () ->
    user = new User(content: '<p>hello users</p>')
    expect(user.content).toBe('<p>hello users</p>')
  
  it 'should retreive a user by id', () ->
    userParams =
      id: 1 
      name: 'Alan Pies'
      is_admin: true
      facebook_id: 123
    $httpBackend.expectGET('/api/users/1').respond(userParams)
    user = User.get(id: 1) #.then( -> console.log(user))
    $httpBackend.flush()
    expect(user.is_admin).toEqual(true)
    


    