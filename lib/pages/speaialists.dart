import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Specialists extends StatefulWidget {
  const Specialists({Key? key}) : super(key: key);

  @override
  _SpecialistsState createState() => _SpecialistsState();
}

class _SpecialistsState extends State<Specialists> {

  bool aVisible= false, bVisible= false,cVisible= false,dVisible= false,fVisible = false;


  @override
  void initState() {
    aVisible = true;

  }

  Widget _drCard(){
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Theme.of(context).accentColor, width: 2),
        color: Theme.of(context).primaryColor
      ),
    );
  }

  Widget _aDr(){
    return Visibility(
      visible: aVisible,
        child: Container(
          height: MediaQuery.of(context).size.height-222,
          child: ListView(
            scrollDirection: Axis.vertical ,
            children: [
              _drCard(),
              _drCard(),
              _drCard(),
              _drCard(),
              _drCard(),
              _drCard(),
            ],
          ),
        )
    );
  }

  Widget _bDr(){
    return Visibility(
        visible: bVisible,
        child: Column(
          children: [
            Text('asdasd'),
            Text('asdzzzasd'),
            Text('asdasd'),
            Text('asdasd'),
            Text('asdasd'),
          ],
        )
    );
  }

  Widget _cDr(){
    return Visibility(
        visible: cVisible,
        child: Column(
          children: [
            Text('asdasd'),
            Text('asdasd'),
            Text('zzz'),
            Text('asdasd'),
            Text('asdasd'),
          ],
        )
    );
  }

  Widget _dDr(){
    return Visibility(
        visible: dVisible,
        child: Column(
          children: [
            Text('asdasd'),
            Text('asdasd'),
            Text('asdasd'),
            Text('zzz'),
            Text('asdasd'),
          ],
        )
    );
  }

  Widget _fDr(){
    return Visibility(
        visible: fVisible,
        child: Column(
          children: [
            Text('asdasd'),
            Text('asdasd'),
            Text('asdasd'),
            Text('asdasd'),
            Text('zzz'),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Positioned(
              width: 150,
              height: 150,
              right: -45,
              top: -50,
              // bottom: MediaQuery.of(context).size.height/3 ,
              //right: -20,
              child: Image(
                image: AssetImage("assets/images/stethoscope.png"),
              )
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("SPECIALISTS",
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2
                  ),),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  height:75,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 125,
                        child: Column(
                          children: [
                            InkWell(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Endocrinologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor
                                      ),
                                      children: [
                                        TextSpan(text: '\nDiabetes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Theme.of(context).accentColor
                                          ),
                                        )
                                      ]
                                  ),

                                ),
                                onTap: (){
                                  setState(() {
                                    aVisible=true;
                                    bVisible=false;
                                    cVisible=false;
                                    dVisible=false;
                                    fVisible=false;
                                  });
                                }
                            ),
                            Spacer(),
                            Visibility(
                                visible: aVisible,
                                child: Container(
                                  height: 4,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Cardiologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor
                                      ),
                                      children: [
                                        TextSpan(text: '\nBlood Pressure',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Theme.of(context).accentColor
                                          ),
                                        )
                                      ]
                                  ),

                                ),
                                onTap: (){
                                  setState(() {
                                    aVisible=false;
                                    bVisible=true;
                                    cVisible=false;
                                    dVisible=false;
                                    fVisible=false;
                                  });
                                }
                            ),
                            Spacer(),
                            Visibility(
                                visible: bVisible,
                                child: Container(
                                  height: 4,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Haematologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor
                                      ),
                                      children: [
                                        TextSpan(text: '\nThalasemia',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Theme.of(context).accentColor
                                          ),
                                        )
                                      ]
                                  ),

                                ),
                                onTap: (){
                                  setState(() {
                                    aVisible=false;
                                    bVisible=false;
                                    cVisible=true;
                                    dVisible=false;
                                    fVisible=false;
                                  });
                                }
                            ),
                            Spacer(),
                            Visibility(
                                visible: cVisible,
                                child: Container(
                                  height: 4,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Endocrinologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor
                                      ),
                                      children: [
                                        TextSpan(text: '\nDiabetes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Theme.of(context).accentColor
                                          ),
                                        )
                                      ]
                                  ),

                                ),
                                onTap: (){
                                  setState(() {
                                    aVisible=false;
                                    bVisible=false;
                                    cVisible=false;
                                    dVisible=true;
                                    fVisible=false;
                                  });
                                }
                            ),
                            Spacer(),
                            Visibility(
                                visible: dVisible,
                                child: Container(
                                  height: 4,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 125,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Endocrinologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor
                                      ),
                                      children: [
                                        TextSpan(text: '\nDiabetes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Theme.of(context).accentColor
                                          ),
                                        )
                                      ]
                                  ),

                                ),
                                onTap: (){
                                  setState(() {
                                    aVisible=false;
                                    bVisible=false;
                                    cVisible=false;
                                    dVisible=false;
                                    fVisible=true;
                                  });
                                }
                            ),
                            Spacer(),
                            Visibility(
                                visible: fVisible,
                                child: Container(
                                  height: 4,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    _aDr(),
                    _bDr(),
                    _cDr(),
                    _dDr(),
                    _fDr()
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
