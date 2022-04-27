import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.CustomColors.darkBackground,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
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
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color:
                                    colors.CustomColors.searchBackground)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color:
                                    colors.CustomColors.searchBackground)),
                            hintText: 'Fried Rice',
                            hintStyle: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            fillColor: colors.CustomColors.searchBackground,
                            filled: true,
                          ),
                        ))
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text("Filter:",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Available",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Vegan",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Nearby",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Low Cal",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("High Rating",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Rescued",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ]))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 212,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                // This next line does the trick.
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    width: 100,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            child: Image.asset(
                              'img/good.png',
                              width: 332,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            )),
                      ), // Image
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.elliptical(100, 50),
                                    bottomRight: Radius.elliptical(100, 50),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        colors.CustomColors.g1,
                                        colors.CustomColors.g2,
                                      ])),
                              child: Text("HIGH RATING",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.elliptical(100, 50),
                                    bottomRight: Radius.elliptical(100, 50),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        colors.CustomColors.g1,
                                        colors.CustomColors.g2,
                                      ])),
                              child: Text("POPULAR",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                    color: Colors.white),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text("30 min",
                                          style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black))
                                    ]),
                              )
                            ]),
                          ]), // Tags
                      Container(
                          child: Row(children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 160,
                                  ),
                                  Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Restaurant Good",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: colors.CustomColors.text3))
                                  ]),
                                  Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Asian, Japanese",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ])
                                ],
                              ),
                            ])
                          ])), //Name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 320,
                            height: 165,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              color: colors.CustomColors.lime,
                            ),
                            width: 50,
                            height: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.8",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          )
                        ],
                      ) //Rating
                    ]),
                  ), //Restaurant Good
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/vegehouse');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 30, right: 30),
                        width: 100,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(1, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Container(
                            height: 150,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15)),
                                child: Image.asset(
                                  'img/vegehouse.png',
                                  width: 332,
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.center,
                                )),
                          ), // Image
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 60,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.elliptical(100, 50),
                                        bottomRight: Radius.elliptical(100, 50),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            colors.CustomColors.g1,
                                            colors.CustomColors.g2,
                                          ])),
                                  child: Text("NEW",
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.elliptical(100, 50),
                                        bottomRight: Radius.elliptical(100, 50),
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            colors.CustomColors.g1,
                                            colors.CustomColors.g2,
                                          ])),
                                  child: Text("50% OFF",
                                      style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                        color: Colors.white),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.timer_outlined,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text("30 min",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black))
                                        ]),
                                  )
                                ]),
                              ]), // Tags
                          Container(
                              child: Row(children: [
                                Row(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 160,
                                      ),
                                      Row(children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Vege House",
                                            style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: colors.CustomColors.text3))
                                      ]),
                                      Row(children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Chinese, Vegan",
                                            style: GoogleFonts.roboto(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: colors.CustomColors.text4))
                                      ])
                                    ],
                                  ),
                                ])
                              ])), //Name
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 320,
                                height: 165,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  color: colors.CustomColors.lime,
                                ),
                                width: 50,
                                height: 25,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("4.5",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                    Icon(
                                      Icons.star_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ) //Rating
                        ]),
                      )), //Vege House
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    width: 100,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            child: Image.asset(
                              'img/chang.png',
                              width: 332,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            )),
                      ), // Image
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.elliptical(100, 50),
                                    bottomRight: Radius.elliptical(100, 50),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        colors.CustomColors.g1,
                                        colors.CustomColors.g2,
                                      ])),
                              child: Text("POPULAR",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.elliptical(100, 50),
                                    bottomRight: Radius.elliptical(100, 50),
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        colors.CustomColors.g1,
                                        colors.CustomColors.g2,
                                      ])),
                              child: Text("50% OFF",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                    color: Colors.white),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text("30 min",
                                          style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black))
                                    ]),
                              )
                            ]),
                          ]), // Tags
                      Container(
                          child: Row(children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 160,
                                  ),
                                  Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Restaurant Chang",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: colors.CustomColors.text3))
                                  ]),
                                  Row(children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Chinese Food",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: colors.CustomColors.text4))
                                  ])
                                ],
                              ),
                            ])
                          ])), //Name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 320,
                            height: 165,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                              color: colors.CustomColors.lime,
                            ),
                            width: 50,
                            height: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.5",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          )
                        ],
                      ) //Rating
                    ]),
                  ), //Restaurant Chang
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
