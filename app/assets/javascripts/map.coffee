jQuery ->
  markersArray = []
  lat_field = $('#park_latitude')
  lng_field = $('#park_longitude')

  window.initMap = ->
    if $('#map').size() > 0
      map = new google.maps.Map document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644}
        zoom: 8
      }

      map.addListener 'click', (e) ->
        parkMarkerAndPanTo e.latLng, map
        updateFields e.latLng

      $('#find-on-map').click (e) ->
        e.preventDefault()
        parkMarkerAndPanTo {
          lat: parseInt lat_field.val(), 10
          lng: parseInt lng_field.val(), 10
        }, map

  parkMarkerAndPanTo = (latLng, map) ->
    markersArray.pop().setMap(null) while(markersArray.length)
    marker = new google.maps.Marker
      position: latLng
      map: map

    map.panTo latLng
    markersArray.push marker

  updateFields = (latLng) ->
    lat_field.val latLng.lat()
    lng_field.val latLng.lng()
