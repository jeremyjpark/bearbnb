BearBnb.Views.PlaceNew = Backbone.View.extend({
  template: JST['places/new'],
  
  events: {
    "click .btn": "submitForm"
  },

  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  submitForm: function(event) {
    event.preventDefault();
    console.log("submitting");
    Backbone.history.navigate("places/" + 1);
    this.render();
  }
});