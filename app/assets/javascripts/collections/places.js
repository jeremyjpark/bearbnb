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
  },

  parse: function(response) {
    debugger
    // this.page = parseInt(response.page);
    // this.total_pages = parseInt(response.total_pages);
    // this.total_count = parseInt(response.total_count);
    // return response.meals;
  }


});

BearBnb.Collections.places = new BearBnb.Collections.Places();