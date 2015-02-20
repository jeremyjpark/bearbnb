BearBnb.Views.BasicShow = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  render: function () {
    // ONLY CALL THIS ONCE!
    var mapOptions = {
      center: { lat: 37.8718992, lng: -122.2585399},
      zoom: 15
    };
    this._map = new google.maps.Map(this.el, mapOptions);
  }

});