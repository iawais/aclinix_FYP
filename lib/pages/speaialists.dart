import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Specialists extends StatefulWidget {
  const Specialists({Key? key}) : super(key: key);

  @override
  _SpecialistsState createState() => _SpecialistsState();
}

class _SpecialistsState extends State<Specialists> {

  bool aVisible= false, bVisible= false,cVisible= false,dVisible= false,fVisible = false,favv =false;
  IconData fav = Icons.favorite;
  IconData notfav = Icons.favorite_border_outlined;

  @override
  void initState() {
    aVisible = true;

  }

 /* _launchPhoneURL(String phoneNumber) async {
    String url = 'tel:' + phoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/

  Widget _drCard(){
    return Stack(
      children: [
        Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(15, 5, 10, 5),
            padding: EdgeInsets.fromLTRB(10, 15, 2, 5),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Theme.of(context).accentColor, width: 2),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //  spreadRadius: 2,
                  blurRadius: 7,
                  //offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      child: ClipOval(
                        child: Image(image: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg')),

                      ),
                    ),
                    SizedBox(width: 8,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr. Awais Chaudhary",maxLines: 1, softWrap: true, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).accentColor
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text("Endocrinologist", textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[800]
                          ),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("4.5 ", textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[800]
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: RatingBar.builder(
                                initialRating: 4.2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 3,),
                        GestureDetector(
                          onTap: (){
                            //_launchPhoneURL('090078601');
                          },
                          child: Row(
                            children: [
                              Icon(Icons.phone, color: Theme.of(context).accentColor,size: 20,),
                              Text(" 090078601", textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[800]
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 5,),
                Container(

                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Theme.of(context).accentColor,size: 20,),
                      Expanded(
                        child: Text("Block C, Johar Town, Lahore, Pakistan", maxLines: 1, softWrap: true, overflow: TextOverflow.ellipsis , textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[800]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
        Positioned(
          bottom: 0+15,
          right: 0+20,
            child: GestureDetector(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Theme.of(context).accentColor, width: 2),
              color: Theme.of(context).accentColor,
            ),
            child: Icon(Icons.calendar_today_outlined, color: Theme.of(context).primaryColor, size: 18,),
          ),
        )
        ),
        Positioned(
            top: 0+15,
            right: 0+20,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  favv= !favv;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).primaryColor,
                ),
                child: Icon( (favv) ? fav : notfav, color: Theme.of(context).accentColor, size: 20,),
              ),
            )
        )
      ],
    );
  }

  Widget _aDr(){
    return Visibility(
      visible: aVisible,
        child: Container(
          height: MediaQuery.of(context).size.height*0.68,
          child: ListView(
            physics: BouncingScrollPhysics(),
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
        child: Container(
          height: MediaQuery.of(context).size.height*0.68,
          child: ListView(
            physics: BouncingScrollPhysics(),
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

  Widget _cDr(){
    return Visibility(
        visible: cVisible,
        child:Container(
          height: MediaQuery.of(context).size.height*0.68,
          child: ListView(
            physics: BouncingScrollPhysics(),
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

  Widget _dDr(){
    return Visibility(
        visible: dVisible,
        child:Container(
          height: MediaQuery.of(context).size.height*0.68,
          child: ListView(
            physics: BouncingScrollPhysics(),
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

  Widget _fDr(){
    return Visibility(
        visible: fVisible,
        child: Container(
          height: MediaQuery.of(context).size.height*0.68,
          child: ListView(
            physics: BouncingScrollPhysics(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child:Stack(
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
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 130,
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
                          width: 130,
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
                          width: 130,
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
                          width: 130,
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
                          width: 130,
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
        ),
      )
    );
  }
}
