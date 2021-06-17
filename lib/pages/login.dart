import 'package:aclinix/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool passHidden = true;
  IconData passSuffix = Icons.remove_red_eye_outlined;
  var emailController = TextEditingController();
  var passController = TextEditingController();

/*  double togglePadding = 45;
  IconData toggleIcon = Icons.accessible_rounded;
  bool doc = false;

  Widget _toggle(){
    return GestureDetector(
      onTap: (){
        if(doc)
          setState(() {
            togglePadding = 40;
            toggleIcon = Icons.wheelchair_pickup_sharp;
            doc = false;
          });
        else
          setState(() {
            togglePadding = 5;
            toggleIcon = Icons.accessible_rounded;
            doc = true;
          });
      },
      child: Container(
        height: 35,
        width: 75,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Row(
          children: [
            SizedBox(width: togglePadding),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(toggleIcon, color: Colors.white,),
            )
          ],
        ),
      )
    );
  }*/
  void _eyePress(){
    setState(() {
      if(passHidden) {
        passHidden = false;
        passSuffix = Icons.remove_red_eye_sharp;
      }
      else{
        passHidden = true;
        passSuffix = Icons.remove_red_eye_outlined;
      }
    });
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        // Email
        Container(
          margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 45.0 ,
                  child: TextField(
                      controller: emailController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle( fontSize: 15, color: Theme.of(context).accentColor),
                          contentPadding: EdgeInsets.all(15),
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor, width: 1.0),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(25.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor, width: 1.0),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(25.0),
                          )
                      )
                  ),
                )
                )
              ]
          ),
        ),
        SizedBox(height: 5,),
        // Password
        Container(
          margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  height: 45.0 ,
                  //margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 0),
                  child: TextField(
                      controller: passController,
                      obscureText: passHidden,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle( fontSize: 15, color: Theme.of(context).accentColor),
                          contentPadding: EdgeInsets.all(15),
                          suffixIcon: IconButton(
                            onPressed: () => _eyePress(),
                            icon: Icon(passSuffix, color: Theme.of(context).accentColor,),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor, width: 1.0),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(25.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).accentColor, width: 1.0),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(25.0),
                              )
                          )
                      )
                  ),
                )
              ]
          ),
        ),
      ],
    );
  }




  Widget _submitButton() {
    return InkWell(
      //onTap: () => ,
      child: Container(
        height: 45,
        margin: EdgeInsets.fromLTRB(65, 0, 65, 0),
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xFF322e8d)),
        child: Text(
          'Log In',
          style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _signup(){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
      },
      child: Text('Sign Up?',
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 18
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: -130,
                  left: 0,
                  child: Image(
                    image: AssetImage("assets/images/doctor.png"),
                    width: MediaQuery.of(context).size.width,
                  )
                ),
                Positioned(
                    width: 150,
                    height: 150,
                    bottom: 200,
                    right: 0,
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
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    //width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage("assets/images/front.png",),width: 100,height: 100,),
                                Text('ACLINIX',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'AgencyFb',
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    letterSpacing: 3
                                  ),
                                )
                              ],
                            ),
                            Text("Here for you, Because of you",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                letterSpacing: 0,
                                wordSpacing: 0
                              ),
                            ),
                          ]
                        )
                        ),
                        Text('Login',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 45,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              _emailPasswordWidget(),
                              _submitButton(),
                              SizedBox(height: 10,),
                              _signup(),
                              SizedBox(height: 20,)
                            ],
                          ),
                        )
                      ],
                    )
                )
              ]
            ),
          ],
        )
      )
    );
  }
}