// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var cities = {
   'Groningen':  [ 53.216723950863425, 6.560211181640625, 7],
    'San Francisco': [ 34.01131647557699, -118.25599389648437, 5],
    'New York City': [ 40.7143528, -74.0059731, 3]

 };     
  
function initialize() {
  var myLatlng = new google.maps.LatLng(varLog, varLat);
  var mapOptions = {
    zoom: 8,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  for (var key in cities) {
    var data = cities[key];
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng (data[0], data[1]),
        map: map,
        title: 'test',
    });
}
}

google.maps.event.addDomListener(window, 'load', initialize);


if(google.loader.ClientLocation)
    {
visitor_lat = google.loader.ClientLocation.latitude;
      visitor_lon = google.loader.ClientLocation.longitude;
};