BearBnb.Views.PlaceNew = Backbone.View.extend({
  tagname: 'form',
  template: JST['places/new'],
  
  events: {
    "click .btn": "submitForm",
  },

  // initialize: function() {
  //   this.listenTo(this.)
  // }

  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  // submits the form to be added to the database, adds information to the db,
  // and navigates back to the root page.
  submitForm: function(event) {
    event.preventDefault();
    var target = $('.new-place').serializeJSON();
    var model = new BearBnb.Models.Place();
    model.save(target, {
      success: function() {
        BearBnb.Collections.places.add(model);
        Backbone.history.navigate("places/" + model.id, { trigger: true });
      }
    })
  }
});
