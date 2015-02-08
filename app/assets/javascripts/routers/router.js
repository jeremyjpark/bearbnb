BearBnb.Routers.Router = Backbone.Router.extend({
  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },

  routes: {
    "": "welcome",
    "search": "search",
    "places": "browsePlaces",
    "places/new": "newPlace",
    "places/:id": "showPlace",
    "users/:id": "showUser",
    "map": "showMap"
  },

  welcome: function() {
    // opening view
  },

  search: function() {
    // SeachView
  },

  browsePlaces: function() {
    var that = this;
    BearBnb.Collections.places.fetch({
      success: function() {
        var newView = new BearBnb.Views.PlacesIndex({
          collection: BearBnb.Collections.places
        });
        
        that._swapview(newView);
      }
    });
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

    this._swapview(showView);
  },

  showUser: function(id) {
    var user = BearBnb.Collections.users.getOrFetch(id);
    var showView = new BearBnb.Views.UserShow({
      model: user
    });

    this._swapview(showView);

  },

  _swapview: function(view) {
    this._currentView && this._currentView.remove();
    this.$rootEl.html(view.render().$el);
    this._currentView = view;
  }
});
