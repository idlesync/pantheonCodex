application = require 'application'

application.module 'characterDetailsModule', ->
  @display = (region, model) ->
    CharacterDetailsView = require 'views/CharacterDetails'

    characterDetailsView = new CharacterDetailsView {model}
    region.show characterDetailsView
