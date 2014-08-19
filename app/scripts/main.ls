#initialize leaflet
map = L.map 'map' .setView [51.505 -0.09], 13
L.tileLayer 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png' .addTo map

#initialize angualr

app = angular.module 'router', []
app.controller 'RouterController', ->
  console.log 'hello'
