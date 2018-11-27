function datos_marker(lat, lng, marker)
      {
      var mi_marker = new google.maps.LatLng(lat, lng);
      map.panTo(mi_marker);
      google.maps.event.trigger(marker, 'click');
      }
$(document).ready(function(){
  $("#buscar").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tabla tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

