BearBnb.Routers.Places = Backbone.Router.extend({
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

  

  _swapview: function(view) {
    this._currentView && this._currentView.remove();
    this.$rootEl.html(view.render().$el);
    this._currentView = view;
  }
});
