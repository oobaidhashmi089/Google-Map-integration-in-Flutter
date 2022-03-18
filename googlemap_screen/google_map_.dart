// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'location_services.dart';

// class Googlemap extends StatefulWidget {
//   const Googlemap({Key? key}) : super(key: key);

//   @override
//   State<Googlemap> createState() => GooglemapState();
// }

// class GooglemapState extends State<Googlemap> {
//   TextEditingController _searchcontroller = TextEditingController();
//   final Completer<GoogleMapController> _controller = Completer();

//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(24.9200034, 67.1191429),
//     zoom: 11.5,
//   );

//   static final Marker origin = Marker(
//     markerId: MarkerId('Your Location'),
//     infoWindow: InfoWindow(title: "Your Location"),
//     icon: BitmapDescriptor.defaultMarker,
//     position: LatLng(24.932742220871667, 67.15886068246908),
//   );

//   static final Marker destination = Marker(
//     markerId: MarkerId('Origin'),
//     infoWindow: InfoWindow(title: "Origin"),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//     position: LatLng(24.9200034, 67.1191429),
//   );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(24.932742220871667, 67.15886068246908),
//       tilt: 59.440717697143555,
//       zoom: 18.551926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Google Maps").centered(),
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                   child: TextFormField(
//                 controller: _searchcontroller,
//                 textCapitalization: TextCapitalization.words,
//                 decoration: InputDecoration(hintText: "Search Google Maps"),
//                 onChanged: (value) {},
//               )),
//               IconButton(
//                   onPressed: () async {
//                     var place = await LocationServices()
//                         .getplacesid(_searchcontroller.text);

//                     // _goToTheCity(place);
//                   },
//                   icon: Icon(Icons.search)),
//             ],
//           ),
//           Expanded(
//             child: GoogleMap(
//               mapType: MapType.normal,
//               myLocationButtonEnabled: true,
//               // mapType: MapType.normal,
//               initialCameraPosition: _kGooglePlex,
//               markers: {origin, destination},
//               onMapCreated: (GoogleMapController controller) {
//                 _controller.complete(controller);
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the lake!'),
//         icon: Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }

 
//   }

