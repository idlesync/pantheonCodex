BaseController = Marionette.Controller.extend
  parseQueryParams: (query) ->
    outObject = {}

    return outObject unless query?

    parts = query.split '&'

    for part in parts
      [key, value] = part.split '='
      outObject[key] = value

    outObject

module.exports = BaseController
