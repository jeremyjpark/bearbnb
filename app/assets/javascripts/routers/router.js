BearBnb.Routers.Router = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "welcome",
    "search": "search",
    "places": "browsePlaces",
    "places/new": "newPlace",
    "places/:id": "showPlace"
  },

  welcome: function() {
    // opening view
  },

  search: function() {
    // SeachView
  },

  browsePlaces: function() {
    // Browsing view, is this actually part of the search view?
  },

  newPlace: function() {
    var newView = new BearBnb.Views.PlaceNew();
    this._swapview(newView);
  },

  showPlace: function(id) {
    var place = BearBnb.Collections.places.getOrFetch(id);
    var showView = new BearBnb.Views.PlaceShow({
      model: place
    });

    this._swapview(newView);
  },

  _swapview: function(view) {
    this._currentView && this._currentView.remove();
    this.$rootEl.html(view.render().$el);
    this._currentView = view;
  }
});
