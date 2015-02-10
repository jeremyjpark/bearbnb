BearBnb.Views.PlaceShow = Backbone.View.extend({

  template: JST['places/show'],

  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function() {
    var attrs = [ "title", "price", "deposit", "utilities", "room", "preference", "laundry", "agreement", "address", "desc" ];
    var urls = [ "image_urls" ];
    var content = this.template({
      images: urls,
      details: attrs,
      place: this.model
    });

    this.$el.html(content)
    return this;
  },

});
