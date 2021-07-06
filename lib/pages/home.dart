import 'package:aclinix/pages/homepage.dart';
import 'package:aclinix/pages/navbar_key.dart';
import 'package:aclinix/pages/nearMeHospitals.dart';
import 'package:aclinix/pages/patientprofile.dart';
import 'package:aclinix/pages/speaialists.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final screens =[HomePage(),NearMeHospitals(),Specialists(), PatientProfile()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(

        backgroundColor: Colors.grey[300],
        drawer: Drawer(

          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body:screens[selectedIndex],

        bottomNavigationBar: CurvedNavigationBar(
          key: NavbarKey.getKey(),
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home_outlined, size: 30,color: Theme.of(context).accentColor,),
            Icon(Icons.add_business_outlined, size: 30,color: Theme.of(context).accentColor,),
            Icon(Icons.assignment_ind_outlined, size: 30,color: Theme.of(context).accentColor,),
            Icon(Icons.account_circle_outlined  , size: 30,color: Theme.of(context).accentColor,),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.grey[300],
          animationCurve: Curves.easeInOutQuint,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
             selectedIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
