async function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: -34.397, lng: 150.644 },
      zoom: 8
    });
  

    navigator.geolocation.getCurrentPosition(position => {
      const currentLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
      new google.maps.Marker({
        position: currentLocation,
        map: map,
       
      });
    });
 
    const certainPoint = new google.maps.LatLng(-34.397, 150.644);
    new google.maps.Marker({
      position: certainPoint,
      map: map,
     
    });
  }
  
  initMap();