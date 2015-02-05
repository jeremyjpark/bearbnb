BearBnb.Views.PlaceNew = Backbone.View.extend({
  template: JST['places/new'],

  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});