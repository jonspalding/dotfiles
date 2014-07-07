{View} = require 'atom'

module.exports =
class TestingView extends View
  @content: ->
    @div class: 'testing overlay from-top', =>
      @div "The Testing package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "testing:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "TestingView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
