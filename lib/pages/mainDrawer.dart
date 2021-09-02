import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {

  String label = "";

  MainDrawer(String s){
    label = s;
  }


  @override
  _MainDrawerState createState() => _MainDrawerState(label);
}

class _MainDrawerState extends State<MainDrawer> {

  String label = "";

  _MainDrawerState(String label)
  {
    this.label = label;
  }

  Widget _drawerHeader(){
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 55.0,
          backgroundColor: Colors.white,//Color(0xFF778899),
          child: ClipOval(
            child: Image(image: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg')),
          ),
        ),
        Spacer(),
        Text(
          'ABC',
          //overflow: TextOverflow,
          softWrap: true,
          style:  TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer()
      ],
    );
  }

  Widget _mainDrawer(){
      return Drawer(
          child: ListView(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  height: 170,
                  child: DrawerHeader(
                    margin: EdgeInsets.only(bottom: 0),
                    child: _drawerHeader(),
                    decoration: BoxDecoration(
                      color: Color(0xffe1e2e5),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Container(
                    color: Colors.white,
                    child: Column(
                        children: [
                          _drawerListItem("Home"),
                          _drawerListItem("Profile"),
                          _drawerListItem("Statistics"),
                          _drawerListItem("Favorites"),
                          Divider(thickness: 1),
                          _drawerListHeading("Operations"),
                          _drawerListItem("Logout", color: Theme.of(context).accentColor),
                          Divider(thickness: 1),
                          _drawerListHeading("Other"),
                          _drawerListItem("About Us"),
                          _drawerListItem("Privacy Policy"),
                          _drawerListItem(""),
                        ]
                    )
                )
              ]
          )
      );
  }

  Widget _drawerListItem( String title, {Color color=Colors.black}){
    Color back, text;
    if(title==label){
      back = Theme.of(context).accentColor.withOpacity(0.15);
      text = Theme.of(context).accentColor;
    }
    else {
      back = Colors.white;
      text = color;
    }
    return Container(
      //color: Theme.of(context).accentColor,
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      padding: EdgeInsets.all(0),
      height: 40,
      child: GestureDetector(
        onTap: () {
          setState((){
            //con.itemClick(title, label, context);
          });
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: back
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: text,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerListHeading( String title){
    Color back = Colors.white;
    Color text = Colors.grey[500]!;
    return Container(
      //color: Theme.of(context).accentColor,
      margin: EdgeInsets.only(bottom: 0),
      padding: EdgeInsets.all(0),
      height: 40,
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: back
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: text,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          /*Expanded(
            child: Divider(
              thickness: 3,
            ),
          )*/
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _mainDrawer(), width: MediaQuery.of(context).size.width*0.70,);
  }
}
