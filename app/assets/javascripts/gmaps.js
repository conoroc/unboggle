var draw_customers = (function(my_map) {

    var users = $('#gmapdiv').data('user');
//    var user_long = $('#gmapdiv').data('long');



//    alert(this.latitude);
//    alert(this.longitude);
//	var customers = [
//		{id: 15, name: "bob", coords: [user_lat, user_long]},
//		{ id: 22, name: "john", coords: [53, -7] },
//		{ id: 48, name: "henry", coords: [53.5, -6] },
//		{ id: 98, name: "charles", coords: [53.5,-7] }
//	];



//    alert(this.longitude);

   for(var i in users){
	    var customer = users[i];
	    var marker_options = {
		    position: new google.maps.LatLng(
			    customer.latitude,
	            customer.longitude
            ),
            icon: {
	        path: google.maps.SymbolPath.CIRCLE,
                    fillColor: "#ff0000",
                    fillOpacity: 0.3,
                    strokeColor: "#ff0000",
                    strokeWeight: 1.5,
                    scale: 10
            },
	        map: my_map

        };

        var marker = new google.maps.Marker(marker_options);
       google.maps.event.addListener(
           marker,
           "click",
           function() {
               var icon = this.getIcon();
               switch(icon.strokeColor) {
                   case "#ff0000":
                       icon.strokeColor = "#00ff00";
                       icon.fillColor = "#00ff00";
                       break;
                   case "#00ff00":
                       icon.strokeColor = "#0000ff";
                       icon.fillColor = "#0000ff";
                       break;
                   case "#0000ff":
                       icon.strokeColor = "#ff0000";
                       icon.fillColor = "#ff0000";
                       break;
               }
               this.setIcon(icon);
           }
       );
   }

});

//var draw_marker = (function(my_map, position) {
////    var marker_options = {
////	    position: new google.maps.LatLng(
////	        position.coords.latitude,
////	        position.coords.longitude
////        ),
////        icon: {
////	        path: google.maps.SymbolPath.CIRCLE,
////            fillColor: "#ffffff",
////            fillOpacity: 0.3,
////            strokeColor: "#ff0000",
////            strokeWeight: 1.5,
////            scale: 20
////        },
////	    map: my_map
////    };
//
//   var marker = new google.maps.Marker(marker_options);
//
//});


var draw_map = (function(position) {
	var map_options = {
		center: new google.maps.LatLng(
			position.coords.latitude,
	        position.coords.longitude
        ),
        zoom: 2,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var my_map = new google.maps.Map(
	    document.getElementById("my_google_map"),
	    map_options
    );

    draw_customers(my_map);
});


$(document).on("ready", function() {
    navigator.geolocation.getCurrentPosition(draw_map);

});

