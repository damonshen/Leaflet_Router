#initialize leaflet
map = L.map 'map' .setView [51.505 -0.09], 13
L.tileLayer 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png' .addTo map

router = L.Routing .control {
  waypoints: [
    L.latLng 57.74, 11.94
    L.latLng 57.6792, 11.9
  ]
} .addTo map

waypoints = router .getPlan!
console.log waypoints

#initialize angualr

app = angular.module 'router', []
app.controller 'RouterController', ->
  console.log 'hello'
