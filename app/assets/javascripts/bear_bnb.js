window.BearBnb = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new BearBnb.Routers.Router({
      $rootEl: $("#main")
    });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  BearBnb.initialize();
});
