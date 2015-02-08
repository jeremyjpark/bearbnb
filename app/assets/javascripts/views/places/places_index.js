BearBnb.Views.PlacesIndex = Backbone.View.extend({

  template: JST['places/index'],

  render: function() {
    var content = this.template({
      places: this.collection
    });
    this.$el.html(content);
    return this;    
  }
});
