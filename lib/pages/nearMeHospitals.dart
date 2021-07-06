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
  var width;

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

    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  alignment: Alignment.topCenter,
                  child: Text("Find Hospitals Near Me", textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  height: (MediaQuery.of(context).size.height/2)-37,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF322e8d),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height/2)-37,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                )
              ],
            ),
            Positioned(
              top: 40,
              child:  Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height-130,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: ClipPath(
                    clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(7)
                    )),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                      target: LatLng(22.5448133,88.343691),
                      zoom: 15
                    ),
                  ),
                )
              )
            ),

            Positioned(
              top: 80,
              left: 10,
              width: MediaQuery.of(context).size.width-20,
              child:ClipPath(
                clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(7),
                )),
                child: Visibility(
                  visible: true,
                  child: Container(
                    color: Color(0xffB8B7C9).withOpacity(0.78),
                    height: 135,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20, 20 , 10, 0),
                    // margin: EdgeInsets.fromLTRB(15, 85, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Niazi Hospital',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.local_phone_outlined),
                            SizedBox(width: 5,),
                            Text('+9230 090078601',maxLines: 1),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.map_outlined),
                            SizedBox(width: 5,),
                            Text('Block B, Johar town, Lahore',maxLines: 1),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              )
            )
          ],
        )
      ),
    );
  }
}

