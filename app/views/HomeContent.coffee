application = require 'application'

HomeContentView = Backbone.Marionette.LayoutView.extend
  template: require('templates')(Handlebars)['app/templates/homeContent.hbs']

  className: 'home-content-view'

  regions:
    searchMediaRegion: '#search-media'
    listMediaRegion: '#list-media'

module.exports = HomeContentView
