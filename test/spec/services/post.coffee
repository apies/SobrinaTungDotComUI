'use strict'

describe 'Service: Post', () ->

  # load the service's module
  beforeEach module 'sobrinaTungDotComApp:services'

  # instantiate service
  Post = {}
  $httpBackend = {}
  $resource = {}
  beforeEach inject ( _$resource_, _$httpBackend_, _Post_) ->
    $resource = _$resource_
    $httpBackend = _$httpBackend_
    Post = _Post_

  it 'should instantiate a new post', () ->
    post = new Post(content: '<p>hello posts</p>')
    expect(post.content).toBe '<p>hello posts</p>'
  
  it 'should save a post with a post to api/posts', () ->
    post = new Post(content: '<p>hello posts</p>')
    $httpBackend.expectPOST('/api/posts').respond(200)
    post.$save()
    $httpBackend.flush()
  
  it 'should update a post with the put method', () ->
    post = new Post(id: 1, content: '<p>hello posts</p>')
    post.tags = ["cute", "pretty"]
    $httpBackend.expectPUT('/api/posts/1').respond(200, post)
    Post.update(post)

  # iit 'lets see what happens when live server runs', () ->
  #   Post.query( (post) ->
  #     console.log(post)
  #     expect(post).toNotBe null
  #   )
    #console.log(post)
    #expect(post).toNotBe null


