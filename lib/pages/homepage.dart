import 'package:aclinix/pages/notifications.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String tip = "Consume less salt and sugar for a healthy heart.";

  Widget _appBarData(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/logowhite.png', fit: BoxFit.contain,width: 35,height: 35,),
        SizedBox(width: 3,),
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
      height: 53,
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
                    Scaffold.of(context).openEndDrawer();
                    print("asd");
                  },
                );
              }
          ),
        ],
      ),
    );
  }

  Widget _mainCard(){
    return ClipPath(
          clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7)
      )),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
        height: 110,
        width: 110,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all( color: Color(0xFF322e8d), width: 2),
            color: Colors.white
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.person_add_alt_1_outlined,color: Theme.of(context).accentColor,size: 70,),
            Text('Appointment',
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).accentColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _waveWidget(){
    return CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 75,
        child: ClipOval(
          child:  WaveWidget(
            config: CustomConfig(
              gradients: [
                [Color(0xFF9846a0), Color(0xFF9e37c9)],
                [Color(0xFF5A34EE), Color(0xFF601AA6)],
                [Color(0xFF9846b4), Color(0xFF9e37c9)],
                [Color(0xFF5A34EE), Color(0xFF601AA6)]
              ],
              durations: [15000, 12440, 10800, 6000],
              heightPercentages: [0.445, 0.430, 0.415, 0.4],
              blur: MaskFilter.blur(BlurStyle.solid, 8),
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            waveAmplitude: 0,

            size: Size(
              double.infinity,
              double.infinity,
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height/2.5 ,
          left: 0,
          height: 80,
          width: 80,
          child: Image(image: AssetImage('assets/images/meds.png')),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height/3,
          right: 0,
          height: 100,
          width: 100,
          child: Image(image: AssetImage('assets/images/stethoscope.png')),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.44,
                  decoration: new BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, MediaQuery.of(context).size.width/1.5)),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.43,
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, MediaQuery.of(context).size.width/1.5)),
                  ),
                  child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
                      width: MediaQuery.of(context).size.width,
                      child : Column(
                        children: [
                          Text("Today's Tips", textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).accentColor
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(" $tip ", textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800]
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                _appBar(),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),

                  Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Expanded(child: _mainCard()),
                            SizedBox(width: 10,),
                            Expanded(child: _mainCard()),
                            SizedBox(width: 10,),
                            Expanded(child: _mainCard()),
                            SizedBox(width: 10,),
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
            InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
                  padding: EdgeInsets.all(10),
                  child: Text('Predict Disease',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Theme.of(context).accentColor,
                  ) ,
                )
            ),

          ],
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*0.26,
            left: MediaQuery.of(context).size.width/2 -80,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.white70,Color(0xffb9a6ed)],
                ),
              ),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: _waveWidget(),
                    radius: 80,
                  ),
                  Positioned(
                    //bottom: MediaQuery.of(context).size.height,
                    bottom: 15,
                    right: 50,
                    left: 50,

                    child: Image(image: AssetImage('assets/images/bnda.png'),),

                  )
                ],
              ),
            )
        ),
      ],
    );
  }
}
