application = require 'application'

CharacterController = Marionette.Controller.extend
  viewCharacterRoute: (id) ->
    charactersCollection = require 'collections/characters'
    charactersCollection.fetch
      success: ->
        characterModel = charactersCollection.get id

        if characterModel?
          require 'modules/characterDetails'
          application.characterDetailsModule.display application.contentRegion, characterModel

module.exports = new CharacterController
