application = require 'application'

application.module 'homeContentModule', ->
  @display = (region) ->
    homeContentView = new (require 'views/HomeContent')
    region.show homeContentView

    require 'modules/searchMedia'
    application.searchMediaModule.display homeContentView.searchMediaRegion

    require 'modules/listCharacters'
    application.listCharactersModule.display homeContentView.listMediaRegion
