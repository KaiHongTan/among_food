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
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("Fried Rice",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("Chicken ",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                      Text("Fried Rice",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("Veg ",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                      Text("Fried Rice",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("Egg ",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                      Text("Fried Rice",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("Seafood ",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                      Text("Fried Rice",style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(color: Colors.grey),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
