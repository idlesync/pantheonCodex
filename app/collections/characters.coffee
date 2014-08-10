application = require 'application'
MediaCollection = require 'collections/Media'
CharacterModel = require 'models/Character'
config = require 'config'

CharacterCollection = MediaCollection.extend
  model: CharacterModel

  url: ->
    limit = @itemsPerPage
    offset = Math.max 0, @page * limit

    urlString = "#{config.apiBaseUri}/characters?apikey=#{config.apiKey}&limit=#{limit}&offset=#{offset}"
    urlString = "#{urlString}&nameStartsWith=#{@query}" if @query

    urlString

  parse: (response) ->
    application.vent.trigger '!characters:searchCount', {count: response.data.total}

    MediaCollection.prototype.parse.call this, response

module.exports = new CharacterCollection
