application = require 'application'

HomeController = Marionette.Controller.extend
  defaultRoute: ->
    collection = require 'collections/characters'
    collection.fetch()

    require 'modules/homeContent'
    application.homeContentModule.display application.contentRegion

module.exports = new HomeController
