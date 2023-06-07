<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shodan Map</title>
     <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    <link rel="stylesheet" href="https://api.mapbox.com/mapbox-gl-js/v2.5.1/mapbox-gl.css" type="text/css" />
    <style>
        #map {
            height: 600px;
        }
      
          body{
                background:url(img/background.png);
                background-size: cover;
                background-attachment: fixed;
            }
             
            
    </style>
</head>
<body>
   <%@include file="navbar.jsp" %>
    <h1 class="mt-5 mb-5 text-white text-center ">Shodan Map</h1>
    <div id="map"></div>

    <script src="https://api.mapbox.com/mapbox-gl-js/v2.5.1/mapbox-gl.js"></script>
    <script>
        mapboxgl.accessToken = 'pk.eyJ1Ijoid2FmYWJlbnkiLCJhIjoiY2xpbDVxdXN1MG9zdjNla2RmN29hdW00YSJ9.IN6MEc3j0VmVkJqKijmulg';

        var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [-122.4194, 37.7749],
            zoom: 2
        });

        // Replace with your Shodan API key
        var apiKey = 'imjJFXulzaB22NXcq13S6K2TsB0RDyPf';

        // Make an API request to Shodan for the map data
        var apiUrl = 'https://api.shodan.io/shodan/ports?key=' + apiKey;
        fetch(apiUrl) // Modify the query to match your needs
        .then(response => response.json())
        .then(data => {
          data.matches.forEach(match => {
            var ip = match.ip_str;
            var latitude = match.location.latitude;
            var longitude = match.location.longitude;

            // Create a marker for each IP address
            new mapboxgl.Marker()
              .setLngLat([longitude, latitude])
              .setPopup(new mapboxgl.Popup().setHTML('<h3>' + ip + '</h3>'))
              .addTo(map);
          });
        })
        .catch(error => {
          console.log(error);
        });
    </script>
</body>
</html>
