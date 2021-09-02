import 'package:aclinix/Controller/notification_Contoller.dart';
import 'package:aclinix/Models/Notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {

  @override
  _NotificationsState createState() => _NotificationsState();
}


class _NotificationsState extends State<Notifications> {
  NotificationsController con = new NotificationsController();


  Widget _listItem(NotificationModel n){
    return Container(
      height: 90,
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        color: Theme.of(context).primaryColor,
      ),
      width: MediaQuery.of(context).size.width,
  //    padding: EdgeInsets.symmetric(horizontal: ,vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 8,),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Icon((n.title=='Appointment')? Icons.timer :Icons.notification_important_outlined, color: Theme.of(context).accentColor,size: 40, )
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text('${n.title}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).accentColor,
                    letterSpacing: 2
                  ),
                ),
                SizedBox(height: 5,),
                Expanded(
                  child: Text('${n.message}',maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).accentColor
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _details(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: MediaQuery.of(context).size.height*0.80,
      width: MediaQuery.of(context).size.width*0.85,
      child: FutureBuilder(
          future: con.getReportList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()
                ),
                itemBuilder: (context, index){
                  return _listItem(snapshot.data[index]);
                },
              );
            }
            else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(
              child: Container(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(color: Theme.of(context).primaryColor, strokeWidth: 6,)
              ),
            );
          }
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Theme.of(context).accentColor, width: 2),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            //offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }

Widget _Cont(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Stack(
          children: [
            Positioned(
              bottom: 0-15 ,
              left: 0-10,
              height: 80,
              width: 80,
              child: Image(image: AssetImage('assets/images/meds.png')),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
                Center(
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 4,
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                _details()

              ],
            ),
            Positioned(
                bottom: 0,
                right: MediaQuery.of(context).size.width/2.6,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Theme.of(context).accentColor, width: 1),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(' X ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w400
                        ),
                      )
                  ),
                )
            ),
          ],
        ),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Container(child: _Cont(), width: MediaQuery.of(context).size.width,color: Colors.grey[200],);
  }

}
