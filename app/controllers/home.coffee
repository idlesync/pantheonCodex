BaseController = require 'controllers/Base'
application = require 'application'

HomeController = BaseController.extend
  defaultRoute: (parameters) ->
    params = @parseQueryParams parameters

    params = _.extend {q: '', page: 1}, params
    delete params.q if params.q is ''

    collection = require 'collections/characters'
    collection.page = params.page - 1
    collection.query = params.q
    collection.fetch
      success: ->
        require 'modules/homeContent'
        application.homeContentModule.display application.contentRegion

module.exports = new HomeController
