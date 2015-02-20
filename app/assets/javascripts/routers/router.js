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
    // show the search filter view that reroutes to the filtered listings on success
    BearBnb.Collections.places.fetch();
    var view = new BearBnb.Views.SearchShow({
      collection: BearBnb.Collections.places
    })
    this._searchSwapview(view);
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

  showMap: function() {
    BearBnb.Collections.places.fetch();
    var mapshow = new BearBnb.Views.EventMapShow({
      collection: BearBnb.Collections.places
    });
    this._swapview(mapshow);
  },

  _searchSwapview: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.$el);
    view.render();
  },

  _swapview: function(view) {
    // this._currentView && this._currentView.remove();
    // this.$rootEl.html(view.render().$el);
    // this._currentView = view;
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.$el);
    view.render();

  }
});
