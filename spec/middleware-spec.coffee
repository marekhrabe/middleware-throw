# require main module (defined as `main` in package.json)
middleware = require '..'

describe 'Throw middleware', ->
  beforeEach ->
    next = jasmine.createSpy()

  it 'should fail', ->
    run = ->
      middleware(layer, { throwAsynchronously: false, asyncDelay: 'Before timeout' }, -> null)

    expect(run).toThrow()
