application = require 'application'
config = require 'config'

MediaCollection = Backbone.Collection.extend
  page: 0
  itemsPerPage: config.itemsPerPage
  totalCount: 0
  query: ''

  parse: (response) ->
    @totalCount = response.data.total

    response.data.results

module.exports = MediaCollection