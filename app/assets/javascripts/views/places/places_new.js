BearBnb.Views.PlaceNew = Backbone.View.extend({
  tagname: 'form',
  template: JST['places/new'],
  
  events: {
    "click .btn": "submitForm",
  },

  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },  

  parse: function(objName) {
    var self = this,
      _recurse_form = function(object, objName) {
        _.each(object, function(v,k) {
           if (v instanceof Object) {
              object[k] = _recurse_form(v, objName + '[' + k + '_attributes]');
           } else {
              object[k] = self.$('[name="'+ objName + '[' + k + ']"]').val();
           }
        });
        return object;
      };
   this.model.attributes = _recurse_form(this.model.attributes, objName);
  },


  submitForm: function(event) {
    event.preventDefault();
    var target = $('.new-place').serializeJSON();
    // BearBnb.Collections.places.create(target);
    console.log("place");
    // Backbone.history.navigate("");
    // this.render();
  }
});
