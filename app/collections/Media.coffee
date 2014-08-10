application = require 'application'
config = require 'config'

MediaCollection = Backbone.Collection.extend
  page: 0
  itemsPerPage: config.itemsPerPage
  totalCount: 0
  query: ''

  initialize: ->
    @listenTo application.vent, 'search:all', @onSearchTerm

  onSearchTerm: (data) ->
    @reset()

    @totalCount = 0
    @query = data.query
    @page = 0
    @fetch()

  parse: (response) ->
    @totalCount = response.data.total

    response.data.results

module.exports = MediaCollection