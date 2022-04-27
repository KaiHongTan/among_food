import 'package:flutter/material.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.CustomColors.darkBackground,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  'img/logowb.png',
                  width: 130,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome!",
              style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "AmongFood can provide you the best food delivery experience!",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Set up your delivery address now!",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "SELECT LOCATION",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                                        Navigator.pop(context);
                                        Navigator.pushReplacementNamed(context, '/mainpage');
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
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Provide Delivery location",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: colors.CustomColors.darkOrange),
                            ),
                          ]),
                      width: MediaQuery.of(context).size.width - 80,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
