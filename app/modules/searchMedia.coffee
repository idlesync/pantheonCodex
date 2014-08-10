application = require 'application'

application.module 'searchMediaModule', ->
  @display = (region) ->
    searchMediaView = new (require 'views/SearchMedia')
    region.show searchMediaView
