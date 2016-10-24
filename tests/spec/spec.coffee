testx = require 'testx'
yaml = require 'testx-yaml-parser'

describe 'Todo App', ->
  it 'should be able to create todo items', ->
    testx.runScript yaml.parse 'scripts/test.testx'
