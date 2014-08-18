application = require 'application'

application.module 'listCharactersModule', ->
  @display = (region) ->
    ListCharactersView = require 'views/ListCharacters'

    collection = require 'collections/characters'

    listCharactersView = new ListCharactersView {collection}
    region.show listCharactersView
