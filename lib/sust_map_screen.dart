import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:geolocator/geolocator.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({Key? key}) : super(key: key);

  @override
  _MapscreenState createState() => _MapscreenState();
}
// Create a map screen
class _MapscreenState extends State<Mapscreen> {
  final Set<Marker> markers = new Set();
  //final Set<Marker> _markers = {};

  late GoogleMapController newGoogleMapController;

  late Position currentPosition;
  var geolocator = Geolocator();
// For track current location
  void locatePosition() async {
    LocationPermission permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition =
        new CameraPosition(target: latLatPosition, zoom: 15.5);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  void _onMapCreated(GoogleMapController controller) {
    // call a customized map style 
    controller.setMapStyle(Utils.mapStyle);

    newGoogleMapController = controller;
    locatePosition();
// adding markers
    markers.add(Marker(
      markerId: MarkerId('gc'),
      position: LatLng(24.919407, 91.831724),
      infoWindow: InfoWindow(
        title: 'Gol-Chattar, SUST',
        snippet: 'The central-point of the campus',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('maingate'),
      position: LatLng(24.911156, 91.832222),
      infoWindow: InfoWindow(
        title: 'Main Gate, SUST',
        snippet: 'Entry',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('lakepark'),
      position: LatLng(24.918367, 91.831491),
      infoWindow: InfoWindow(
        title: 'IICT Lake Park, SUST',
        snippet: 'Visiting Spot ',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueCyan,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('ekkilo'),
      position: LatLng(24.914370, 91.832046),
      infoWindow: InfoWindow(
        title: 'Ek Kilo Road, SUST',
        snippet: 'The University Avenue (1km)',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueMagenta,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('audi'),
      position: LatLng(24.923946, 91.8322637),
      infoWindow: InfoWindow(
        title: 'Central Auditorium, SUST',
        //snippet: 'Audi',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('a-bulding'),
      position: LatLng(24.919841, 91.832752),
      infoWindow: InfoWindow(
        title: 'Academic Building-A',
        snippet: 'Dept of PHY, MEE, BMB, GEE',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

     markers.add(Marker(
      markerId: MarkerId('C-bulding'),
      position: LatLng(24.921038, 91.833817),
      infoWindow: InfoWindow(
        title: 'Academic Building-C',
        snippet: 'Dept of MAT, STA, IPE',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

     markers.add(Marker(
      markerId: MarkerId('D-bulding'),
      position: LatLng(24.920418, 91.831794),
      infoWindow: InfoWindow(
        title: 'Academic Building-D',
        snippet: 'Dept of ANP, SOC, SCW, ECO, PAD',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

         markers.add(Marker(
      markerId: MarkerId('B-bulding'),
      position: LatLng(24.921156, 91.833129),
      infoWindow: InfoWindow(
        title: 'Academic Building-B',
        snippet: 'Dept of BNG, CEP, CHE',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

       markers.add(Marker(
      markerId: MarkerId('E-bulding'),
      position: LatLng(24.920554, 91.833963),
      infoWindow: InfoWindow(
        title: 'Academic Building-E',
        snippet: 'Dept of ARC, ENG, BUS,FET',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(Marker(
      markerId: MarkerId('id-7'),
      position: LatLng(24.922405, 91.832526),
      infoWindow: InfoWindow(
        title: 'University Center, SUST',
        snippet: 'UC',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueAzure,
      ),
    ));

    markers.add(Marker(
      markerId: MarkerId('IICT'),
      position: LatLng(24.918163, 91.830842),
      infoWindow: InfoWindow(
        title: 'IICT, SUST',
        snippet: 'Depts of CSE, EEE & Institute of SWE',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));

    markers.add(Marker(
      markerId: MarkerId('NZ'),
      position: LatLng(24.925558, 91.838432),
      infoWindow: InfoWindow(
        title: 'New Zealand, SUST',
        snippet: 'A hilly green zone',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueGreen,
      ),
    ));

    setState(() {   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Explore SUST Campus'),
        toolbarHeight: 35,
      ),
     
     // Implement google map
     
      body: GoogleMap(
        compassEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        //padding: EdgeInsets.only(top: ScreenUtil().setHeight(100)),
        onMapCreated: _onMapCreated,
        // markers: _markers,
        markers: markers,
        initialCameraPosition: const CameraPosition(
          target: LatLng(24.918100, 91.832600),
          zoom: 15.5,
        ),
      ),
    );
  }
}
// a json code created on the google developer console
class Utils {
  static String mapStyle = '''
[
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#f0eed0"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#c55134"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#64af69"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#c400c7"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#c1efbe"
      }
    ]
  },
  {
    "featureType": "poi.school",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8a1919"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#c1c9d2"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#5f6263"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#8a9ea8"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#c1c9d2"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#6f7376"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#6fbbe2"
      }
    ]
  }
]
  ''';
}
