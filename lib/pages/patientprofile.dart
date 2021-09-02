import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientProfile extends StatefulWidget {
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {

  Widget _details(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 60, 10, 10),
      height: MediaQuery.of(context).size.height*0.60,
      width: MediaQuery.of(context).size.width*0.75,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name: ',
                    style: TextStyle(
                      fontSize: 21,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    child: Text('Awais Chaudhary',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Email: ',
                    style: TextStyle(
                      fontSize: 21,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    child: Text('123456abc@gmail.com',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Phone: ',
                    style: TextStyle(
                      fontSize: 21,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    child: Text('090078601',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CNIC: ',
                    style: TextStyle(
                      fontSize: 21,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    child: Text('3510287771173',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Password: ',
                    style: TextStyle(
                      fontSize: 21,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Expanded(
                    child: Text('***********',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),

            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Theme.of(context).accentColor, width: 2),
        color: Colors.white,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  Stack(
            children: [
          /*
              Positioned(
                top: 0-20,
                right: 0-20,
                height: 100,
                width: 100,
                child: Image(image: AssetImage('assets/images/stethoscope.png')),
              ),
*/
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
                      'Profile',
                      style: TextStyle(
                        fontSize: 28,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),

                  _details()

                ],
              ),
              Positioned(
                  bottom: 0,
                  right: MediaQuery.of(context).size.width/3.3,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Theme.of(context).accentColor, width: 2),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: Theme.of(context).primaryColor, size: 18,),
                          SizedBox(width: 5),
                          Text(
                            'EDIT ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 4,
                            ),
                          ),

                        ],
                      )
                    ),
                  )
              ),
              Positioned(
                top: 50,
                left: (MediaQuery.of(context).size.width/3.3),
                child: CircleAvatar(
                  radius: 61,
                  backgroundColor: Theme.of(context).accentColor,
                  child: CircleAvatar(
                    radius: 59,
                    child: ClipOval(
                      child: Image(image: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
