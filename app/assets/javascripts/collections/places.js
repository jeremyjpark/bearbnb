BearBnb.Collections.Places = Backbone.Collection.extend({

  model: BearBnb.Models.Place,
  url: 'api/places',

  getOrFetch: function(id) {
    var place = this.get(id);
    var places = this;

    if (!place) {
      place = new BearBnb.Models.Place({ id: id });
      place.fetch({
        success: function() {
          places.add(place);
        }
      });
    } else {
      place.fetch();
    }

    return place
  }

});
