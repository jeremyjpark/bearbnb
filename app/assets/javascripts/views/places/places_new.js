BearBnb.Views.PlaceNew = Backbone.View.extend({
  tagname: 'form',
  template: JST['places/new'],
  
  events: {
    "click .formsubmit": "submitForm",
  },

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
    var query = target.address.split(" ").join("%20")
    // following portion allows the user to assign latitude and longitude. I 
    // don't quite know how to do this with the geocoder api that google provides,
    // unless this is actually the way to do it. Messy, but works. Remember to raise issue
    // on github so this doesn't smell.
    var that = this;
    this.getCoordinates(target.address, function(coordinates) { 
      that.latitude = coordinates[0];
      that.longitude = coordinates[1];
      console.log(coordinates[0]);
    });
    
    var model = new BearBnb.Models.Place();
    model.save(target, {
      success: function() {
        BearBnb.Collections.places.add(model);
        Backbone.history.navigate("places/" + model.id, { trigger: true });
      }
    })
  },

  getCoordinates: function (address, callback) {
    var geocoder = new google.maps.Geocoder();

    var coordinates;
    geocoder.geocode({ address: address}, function (results, status) {
      var coord_obj = results[0].geometry.location;
      var coordinates = [coord_obj.k, coord_obj.D]
      callback(coordinates);
    });
  }

});
