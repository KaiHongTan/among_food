import 'package:among_food/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class OnTheWay extends StatefulWidget {
  const OnTheWay({Key? key}) : super(key: key);

  @override
  _OnTheWayState createState() => _OnTheWayState();
}

class _OnTheWayState extends State<OnTheWay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:50, left:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Your food is on the way!", style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
            SizedBox(height: 10,),
            Text("Estimated Time of Arrival: 15 minutes", style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
            SizedBox(height: 50,),
            Text("Order Status:", style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
            SizedBox(height: 10,),
            Row(children: [
              Icon(Icons.check, color: colors.CustomColors.darkOrange,),
              Text("Food prepared by restaurant", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Icon(Icons.check, color: colors.CustomColors.darkOrange,),
            Text("Food picked up from restaurant", style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Icon(Icons.check, color: colors.CustomColors.darkOrange,),
              Text("On the way of delivery", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 100,),
            Text("Your Deliverer:", style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
            SizedBox(height: 10,),
            Row(children: [
              Text("  Name: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Text("  Mr. Ali Bin Salman", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Text("  Contact Number: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Text("012-345 6789", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Text("  Average Rating: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Icon(Icons.star, color: colors.CustomColors.darkOrange),
              Icon(Icons.star, color: colors.CustomColors.darkOrange),
              Icon(Icons.star, color: colors.CustomColors.darkOrange),
              Icon(Icons.star, color: colors.CustomColors.darkOrange),
              Icon(Icons.star_half, color: colors.CustomColors.darkOrange),
            ]),
            SizedBox(height: 50,),
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
                              height: MediaQuery.of(context).size.height * 0.8,
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
                                      Text('Deliverer',
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
                                    padding: const EdgeInsets.only(top:10, left:10, right: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("12:00 pm", style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black))
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Row(children: [
                                          SizedBox(width: 10,),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            color: colors.CustomColors.searchBackground
                                          ),
                                          padding: const EdgeInsets.all(10),
                                          width: 200,
                                          child: Text("Hi, I'm the deliverer, how can I help you?"),)]),
                                        SizedBox(height: 400,),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context).size.width - 90,
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
                                                    hintText: 'Write Message',
                                                    hintStyle:
                                                    TextStyle(color: Colors.grey[500], fontSize: 12),
                                                    fillColor: colors.CustomColors.searchBackground,
                                                    filled: true,
                                                  ),
                                                )),
                                            SizedBox(width: 10,),
                                            Icon(Icons.send, color: colors.CustomColors.darkOrange)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );

                          });
                    },
                    child:
                    Container(
                      alignment: Alignment.center,
                      width: 240,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: colors.CustomColors.darkOrange,
                      ),
                      child: Text("Live Chat With Deliverer", style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                    ))
              ],
            ),
            SizedBox(height: 50,),
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
                              height: MediaQuery.of(context).size.height * 0.8,
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
                                      Text('Restaurant',
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
                                    padding: const EdgeInsets.only(top:10, left:10, right: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("12:00 pm", style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black))
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Row(children: [
                                          SizedBox(width: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: colors.CustomColors.searchBackground
                                            ),
                                            padding: const EdgeInsets.all(10),
                                            width: 200,
                                            child: Text("Hi, I'm the restaurant staff, how can I help you?"),)]),
                                        SizedBox(height: 400,),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context).size.width - 90,
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
                                                    hintText: 'Write Message',
                                                    hintStyle:
                                                    TextStyle(color: Colors.grey[500], fontSize: 12),
                                                    fillColor: colors.CustomColors.searchBackground,
                                                    filled: true,
                                                  ),
                                                )),
                                            SizedBox(width: 10,),
                                            Icon(Icons.send, color: colors.CustomColors.darkOrange)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );

                          });
                    },
                    child:
                    Container(
                      alignment: Alignment.center,
                      width: 240,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: colors.CustomColors.darkOrange,
                      ),
                      child: Text("Live Chat With Restaurant", style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                    ))
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.of(context).pushReplacementNamed('/mainpage');
                      Navigator.pushNamed(context, '/arrived');
                    },
                    child:
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: colors.CustomColors.darkOrange,
                      ),
                      child: Text("Order Arrived", style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
