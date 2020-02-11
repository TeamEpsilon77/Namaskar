import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';


class MapScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapScreenState();
  }
}

class MapScreenState extends State<MapScreen> {
  GoogleMapController mapController;

  String searchAddress;

  LatLng _initialPosition = LatLng(28.3949,84.1240);
  GoogleMapController _controller;
  Location _location =Location();

  void _onMapCreated(GoogleMapController _cntrl){
    _controller = _cntrl;
    _location.onLocationChanged().listen((l){
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(l.latitude,l.longitude),zoom: 12)));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 30.0,
        onPressed: (){ Navigator.pop(
          context,
        );},),
        title: Text(
          "Map",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(target: _initialPosition,zoom: 12),
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
          ),
          Positioned(
            top: 7.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.only(right: 50.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white
              ),
              child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Address',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: barSearch,
                      iconSize: 30.0,padding: EdgeInsets.all(5.0),
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      searchAddress = val;
                    });
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }
  barSearch() {
    Geolocator().placemarkFromAddress(searchAddress).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
          LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 12.0)));
    });
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}