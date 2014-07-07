TestingView = require './testing-view'

module.exports =
  testingView: null

  activate: (state) ->
    @testingView = new TestingView(state.testingViewState)

  deactivate: ->
    @testingView.destroy()

  serialize: ->
    testingViewState: @testingView.serialize()
