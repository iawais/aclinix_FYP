import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class NearMeHospitals extends StatefulWidget {

  @override
  _NearMeHospitalsState createState() => _NearMeHospitalsState();
}

class _NearMeHospitalsState extends State<NearMeHospitals> {

  Completer<GoogleMapController> _controller = Completer();
  late Future<Position> position;
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  Widget _appBarData(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/logo2.png', fit: BoxFit.contain,height: 45,),
        Text(
          'ACLINIX',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'AgencyFb',
              letterSpacing: 2
          ),
        )
      ],
    );
  }

  Widget _appBar(){
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
      padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).accentColor.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      child: Row(
        children: [
          Builder(
              builder: (BuildContext context) {
                return InkWell(
                  child: Icon(Icons.menu,color: Theme.of(context).primaryColor,),
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                );
              }
          ),
          Expanded(child: _appBarData(),),
          Builder(
              builder: (BuildContext context) {
                return InkWell(
                  child: Icon(Icons.notification_important_outlined,color: Theme.of(context).primaryColor,),
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                );
              }
          ),
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    position = _determinePosition();
    print(position);
    print("-----------------");
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 15,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 20);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],

        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(22.5448133,88.343691),
            zoom: 15
          ),
        ),

      ),
    );
  }
}

