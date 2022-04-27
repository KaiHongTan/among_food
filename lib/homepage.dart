import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.arrow_back_ios_new_rounded)),
                                  Text('Deliver to',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width:
                                MediaQuery.of(context).size.width - 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: colors
                                        .CustomColors.searchBackground),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey[500],
                                    ),
                                    SizedBox(
                                        width: MediaQuery.of(context)
                                            .size
                                            .width -
                                            150,
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10),
                                                borderSide: BorderSide(
                                                    color: colors
                                                        .CustomColors
                                                        .searchBackground)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10),
                                                borderSide: BorderSide(
                                                    color: colors
                                                        .CustomColors
                                                        .searchBackground)),
                                            hintText: 'Search Location',
                                            hintStyle: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 14),
                                            fillColor: colors.CustomColors
                                                .searchBackground,
                                            filled: true,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child:
                                  Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      Icon(Icons.home_outlined, size: 35,),
                                      SizedBox(width: 20,),
                                          Container(
                                            width: MediaQuery.of(context).size.width-150,
                                            child: Column(
                                              children: [
                                                Row(children: [
                                                  Text("Home", textAlign: TextAlign.left,
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black)),
                                                ],),
                                                Text("Jalan Lagoon Selatan, Bandar Sunway, 47500 Subang Jaya, Selangor",style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[500]))
                                              ],
                                            ),)
                                    ],
                                  )),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  SizedBox(width: 32,),
                                  Icon(Icons.my_location_outlined, size: 30,),
                                  SizedBox(width: 20,),
                                  Container(
                                    width: MediaQuery.of(context).size.width-150,
                                    child: Column(
                                      children: [
                                        Row(children: [
                                          Text("Current Location", textAlign: TextAlign.left,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black)),
                                        ],),
                                        Text("5, Jalan Universiti, Bandar Sunway, 47500 Subang Jaya, Selangor",style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[500]))
                                      ],
                                    ),)
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 115,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Home",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      ),
                      Text("Jalan Lagoon Selatan, Bandar Sunway...",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500]))
                    ],
                  ),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.CustomColors.searchBackground),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 150,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: colors.CustomColors.searchBackground)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: colors.CustomColors.searchBackground)),
                          hintText: 'Search food or restaurant',
                          hintStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 12),
                          fillColor: colors.CustomColors.searchBackground,
                          filled: true,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 125,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                colors.CustomColors.g1,
                                colors.CustomColors.g2,
                              ])),
                      child: Row(children: [
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                  height: 5,
                                ),
                                Row(children: [
                                  Text("Rescued Food",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ]),
                                Row(
                                  children: [
                                    Text("Saving food and hunger.",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: Text(
                                          "Leftover food and supplies are gathered and sold for 50% off!",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Center(
                                    child: Image.asset(
                                  'img/banner1.png',
                                  width: 120,
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.center,
                                )),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.white,
                                    ),
                                    Text("ORDER NOW",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white))
                                  ],
                                )
                              ],
                            )),
                      ])),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/Hotdeal.png',
                                        width: 50,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Hot Deals",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              SizedBox(
                                height: 18,
                              ),
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/Newonshohoz.png',
                                        width: 50,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("New on AmongFood",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/Badgetmeal.png',
                                        width: 50,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Top Discounts",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/Favouritefood.png',
                                        width: 50,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("High Ratings",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 300,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: colors.CustomColors.lightYellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                ),
                                Text("Looking for breakfast?",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: colors.CustomColors.text1)),
                                Text("Here's what you might want to taste",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: colors.CustomColors.text2)),
                              ])
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 1),
                          height: 190,
                          child: ListView(
                            // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset:
                                      Offset(1, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 160.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                          child: Image.asset(
                                            'img/coffee.png',
                                            width: 180,
                                            fit: BoxFit.fitWidth,
                                            alignment: Alignment.center,
                                          )),
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Row(children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Cappucino",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: colors
                                                          .CustomColors.text3)),
                                              Text("Suhani Restaurant",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: colors
                                                          .CustomColors.text4))
                                            ],
                                          )
                                        ]))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset:
                                      Offset(1, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 160.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                          child: Image.asset(
                                            'img/Rectangle27.png',
                                            width: 180,
                                            fit: BoxFit.fitWidth,
                                            alignment: Alignment.center,
                                          )),
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Row(children: <Widget>[
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Flexible(
                                                  child: Text("Egg and cheese ",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colors
                                                              .CustomColors
                                                              .text3))),
                                              Flexible(
                                                  child: Text("sandwich",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colors
                                                              .CustomColors
                                                              .text3))),
                                              Text("Mehfil's Place",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: colors
                                                          .CustomColors.text4))
                                            ],
                                          )
                                        ]))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset:
                                      Offset(1, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 160.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                          child: Image.asset(
                                            'img/icecream.png',
                                            width: 180,
                                            fit: BoxFit.fitWidth,
                                            alignment: Alignment.center,
                                          )),
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Row(children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text("Strawberry Icecream",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: colors
                                                          .CustomColors.text3)),
                                              Text("Cream Stone",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: colors
                                                          .CustomColors.text4))
                                            ],
                                          )
                                        ]))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/Purepng1.png',
                                        width: 50,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Daily Meals",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              SizedBox(
                                height: 18,
                              ),
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/middleeast.png',
                                        width: 55,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Middle-Eastern",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/chinese.png',
                                        width: 55,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Chinese",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                        Expanded(
                            flex: 4,
                            child: Column(children: [
                              Center(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'img/indian.png',
                                        width: 55,
                                        fit: BoxFit.fitWidth,
                                        alignment: Alignment.center,
                                      ))),
                              Text("Desi",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[700]))
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("Save Rescued Food for 50%!",
                                      style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              colors.CustomColors.greentext)),
                                ),
                                Flexible(
                                  child: Text(
                                      "Leftover supplies and food for less. Don't waste!",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: colors.CustomColors.text4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("ALL",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                  Icon(
                                    Icons.navigate_next_rounded,
                                    size: 17,
                                    color: colors.CustomColors.text4,
                                  )
                                ],
                              ),
                            )),
                        Expanded(flex: 1, child: Container())
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 1),
                    height: 210,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/momo.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Wow! Momo",
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text3)),
                                        Text("Fast food, Chinese",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/Rectangle29.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Flexible(
                                            child: Text("Istah - Shawarma",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors
                                                        .CustomColors.text3))),
                                        Text("Arabian, Lebanese",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/briyani.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Briyanis and More",
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text3)),
                                        Text("Hyderabadi, North Indian",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("Popular Restaurants Nearby",
                                      style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black)),
                                ),
                                Flexible(
                                  child: Text("Some of them offer rescued food",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: colors.CustomColors.text4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("ALL",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                  Icon(
                                    Icons.navigate_next_rounded,
                                    size: 17,
                                    color: colors.CustomColors.text4,
                                  )
                                ],
                              ),
                            )),
                        Expanded(flex: 1, child: Container())
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    height: 220,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/kfc.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("KFC",
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text3)),
                                        Text("Fried Chicken +3 more",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/bk.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Flexible(
                                            child: Text("Burger King",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors
                                                        .CustomColors.text3))),
                                        Text("Burgers, Beverages",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'img/para.png',
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.center,
                                    )),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Paradise Restaurant",
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text3)),
                                        Text("Halal Food",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    colors.CustomColors.text4))
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text("All Restaurants",
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Flexible(
                                  child: Text("256 Restaurants near you",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: colors.CustomColors.text4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("ALL",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: colors.CustomColors.text4)),
                                  Icon(
                                    Icons.navigate_next_rounded,
                                    size: 17,
                                    color: colors.CustomColors.text4,
                                  )
                                ],
                              ),
                            )),
                        Expanded(flex: 1, child: Container())
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: colors.CustomColors.bg),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: colors.CustomColors.bg,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                offset:
                                    Offset(-1, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text("Free Delivery",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: colors.CustomColors.text4)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: colors.CustomColors.bg),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: colors.CustomColors.bg,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                offset:
                                    Offset(-1, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text("High Rating",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: colors.CustomColors.text4)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: colors.CustomColors.bg),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: colors.CustomColors.bg,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                offset:
                                    Offset(-1, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text("Offer",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: colors.CustomColors.text4)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/pizaahut.png',
                                          width: 55,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Pizza Hut",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Home Cook · Fast food · Burger · Home Cook · Fast Food · Burger",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //Pizza Hut
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colors.CustomColors
                                                        .greentext),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Text("POPULAR",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors.CustomColors
                                                        .greentext))),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colors
                                                        .CustomColors.text4),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Text("FREE DELIVERY",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors
                                                        .CustomColors.text4)))
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.payments_outlined, color: colors.CustomColors.org,),
                                                  SizedBox(width: 5,),
                                                  Text("50% OFF",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colors
                                                              .CustomColors
                                                              .org))
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), //End of Pizza Hut
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/kfc2.png',
                                          width: 50,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("KFC Banani",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Fast food · Burger",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //KFC
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colors.CustomColors
                                                        .text4),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Text("POPULAR",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors.CustomColors
                                                        .text4))),

                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), // End of KFC
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/bk2.png',
                                          width: 50,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.timer_outlined, size: 16,color: colors.CustomColors.preorder,),
                                      Text("Pre-order Now",
                                          style: GoogleFonts.roboto(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: colors.CustomColors.preorder))
                                    ],),
                                    SizedBox(height: 5,),
                                    Text("Burger King",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Rescued · Fast food · Burger",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //BK
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), // End of BK
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/mehfill.png',
                                          width: 55,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.av_timer_outlined, size: 16,color: colors.CustomColors.text4,),
                                      Text("Opens at 10:00 am",
                                          style: GoogleFonts.roboto(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: colors.CustomColors.text4))
                                    ],),
                                    Text("Mehfill Coffees",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Home Cook · Beverages",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //Mehfill
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colors
                                                        .CustomColors.text4),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Text("FREE DELIVERY",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors
                                                        .CustomColors.text4)))
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.payments_outlined, color: colors.CustomColors.org,),
                                                  SizedBox(width: 5,),
                                                  Text("15% OFF",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          color: colors
                                                              .CustomColors
                                                              .org))
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), //End of Mehfill
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/Madcheflogo.png',
                                          width: 50,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Madchef Ramsey",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Western Food",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //Madchef
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), // End of Madchef
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        child: Image.asset(
                                          'img/lorem.png',
                                          width: 55,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.center,
                                        )))),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Lorem Kitchen",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text3)),
                                    Text(
                                        "Home Cook · Fast food · Burger · Home Cook · Fast Food · Burger",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ],
                                )),
                          ],
                        ), //Lorem Kitchen
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 125,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colors.CustomColors
                                                        .greentext),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Text("HIGH RATING",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors.CustomColors
                                                        .greentext))),
                                        
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.payments_outlined, color: colors.CustomColors.org,),
                                                  SizedBox(width: 5,),
                                                  Text("50% OFF",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          color: colors
                                                              .CustomColors
                                                              .org))
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context).size.width*0.75,
                                            height: 25,
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.75,
                                                    child: Divider(color: Colors.grey),
                                                  ),
                                                ])),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ), //End of Lorem Kitchen
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
