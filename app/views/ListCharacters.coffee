application = require 'application'
ListItemView = require 'views/ListItem'
ListEmptyView = require 'views/ListEmpty'

ListCharactersView = Marionette.CollectionView.extend
  className: 'list-characters-view'

  childView: ListItemView
  emptyView: ListEmptyView

  tagName: 'ul'

module.exports = ListCharactersView
