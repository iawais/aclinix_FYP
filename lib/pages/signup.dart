import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {



  BoxDecoration bd1 = new BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      border: Border.all( color: Color(0xFF322e8d), width: 2)
  );
  double elevation1 = 10;
  Color icColor1 = Color(0xFF322e8d);

  BoxDecoration bd2 = new BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      border: Border.all( color: Colors.white, width: 2)
  );
  double elevation2 = 4;
  Color icColor2 = Colors.grey;



  void cardSelection(bool d){
    if(d){
      setState(() {
        bd2 = new BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all( color: Color(0xFF322e8d), width: 2)
        );
        elevation2 = 10;
        icColor2 = Color(0xFF322e8d);


        bd1 = new BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all( color: Colors.white, width: 2)
        );
        elevation1 = 4;
        icColor1 = Colors.grey;
      });
    }
    else{
      setState(() {
        bd1 = new BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all( color: Color(0xFF322e8d), width: 2)
        );
        elevation1 = 10;
        icColor1 = Color(0xFF322e8d);


        bd2 = new BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all( color: Colors.white, width: 2)
        );
        elevation2 = 4;
        icColor2 = Colors.grey;
      });
    }
  }

  Widget _card(IconData iconData, String subtitle,BoxDecoration bd, double ev, Color c ){
    return Card(
      elevation: ev,

      shadowColor: Theme.of(context).accentColor,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          height: 110,
          width: 110,
          decoration: bd,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(iconData,color: c,size: 70,),
              Text(subtitle,
                style: TextStyle(
                  fontSize: 15,
                  color: c,
                ),
              )
            ],
          ),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    width: 160,
                    height: 160,
                    top: 30,
                    right: -25,
                    child: Image(
                      image: AssetImage("assets/images/stethoscope.png"),
                    )
                ),
                Positioned(
                    width: 100,
                    height: 100,
                    bottom: 0,
                    left: 0,
                    child: Image(
                      image: AssetImage("assets/images/meds.png"),
                    )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Sign Up',
                        style: TextStyle(
                            fontSize: 45,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('Who are you?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).accentColor,

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Expanded(
                            flex : 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: (){
                                  cardSelection(false);
                                },
                                child: _card(Icons.accessible_rounded,"Patient",bd1, elevation1,icColor1),
                              )

                            )
                          ),
                          Expanded(
                            flex : 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: (){
                                  cardSelection(true);
                                },
                                child:  _card(Icons.wheelchair_pickup_outlined,"Doctor", bd2, elevation2,icColor2),
                              )
                            )
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
    )
   );
  }
}
