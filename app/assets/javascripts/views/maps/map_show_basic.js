BearBnb.Views.BasicShow = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  render: function () {
    // ONLY CALL THIS ONCE!
    var mapOptions = {
      center: { lat: 37.8717, lng: -122.2728},
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
  }

});