application = new Backbone.Marionette.Application()

application.addRegions
  contentRegion: '#content'

application.addInitializer ->
  require 'routers/home'
  require 'routers/character'

module.exports = application
