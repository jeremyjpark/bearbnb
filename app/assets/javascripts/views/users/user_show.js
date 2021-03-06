BearBnb.Views.UserShow = Backbone.CompositeView.extend({

  template: JST['users/show'],

  initialize: function(options) {
    this.listenTo(this.model, "sync", this.render);
    this.model = options.model;
    this.renderPlaces();
  },

  events: {
    "click .places": "showPlaces"
  },

  render: function() {
    var content = this.template({
      user: this.model
    });
    this.$el.html(content)
    return this;
  },

  renderPlaces: function() {
    console.log("hshdhfiuhlololol");
  }
});
