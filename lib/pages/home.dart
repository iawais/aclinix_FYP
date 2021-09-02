import 'package:aclinix/pages/homepage.dart';
import 'package:aclinix/pages/mainDrawer.dart';
import 'package:aclinix/pages/navbar_key.dart';
import 'package:aclinix/pages/nearMeHospitals.dart';
import 'package:aclinix/pages/notifications.dart';
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

        backgroundColor: Colors.grey[200],
        drawer: MainDrawer('Home'),
        endDrawer: Notifications(),

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
          backgroundColor: Colors.grey[200],
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
