application = require 'application'
ListItemView = require 'views/ListItem'
ListEmptyView = require 'views/ListEmpty'

require 'helpers/mediaItem'
require 'helpers/mediaList'

ListCharactersView = Marionette.CompositeView.extend
  className: 'media-list-view character-list-view row'

  template: require('templates')(Handlebars)['app/templates/mediaList.hbs']
  childViewContainer: '.list-container'

  childView: ListItemView
  emptyView: ListEmptyView

  serializeData: ->
    {
      "collection": @collection
    }

module.exports = ListCharactersView
