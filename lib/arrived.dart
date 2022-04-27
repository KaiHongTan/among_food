import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Arrived extends StatefulWidget {
  const Arrived({Key? key}) : super(key: key);

  @override
  _ArrivedState createState() => _ArrivedState();
}

class _ArrivedState extends State<Arrived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:50, left:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Your food has arrived!", style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
            SizedBox(height: 10,),
            Text("Receipt", style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
            SizedBox(height: 10,),
            Text("Order ID: ABC12345", style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
            SizedBox(height: 50,),
            Text("Food Ordered:", style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
            SizedBox(height: 10,),
            Row(children: [
              Text("1x Chili Fried Rice (Regular)", style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Text("2x Soy Bean Mixed Tofu", style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),

            SizedBox(height: 30,),
            Row(children: [
              Text("Total Price: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Text("              RM 26", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Text("Delivery Fees: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Text("         RM 3", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
            SizedBox(height: 10,),
            Row(children: [
              Text("Grand Total: ", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
              Text("            RM 29", style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ]),
            SizedBox(height: 50,),
            Text("Payment Method Used:", style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
            SizedBox(height: 10,),
            Row(children: [
              Text("FPX Online Banking", style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black))]),
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
                              height: MediaQuery.of(context).size.height * 0.7,
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
                                      Text('Review',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("How much would you rate?",style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),

                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: colors.CustomColors.darkOrange,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Review (Optional)",style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context).size.width - 90,
                                          height: 100,
                                          child: TextField(
                                            maxLines: 10,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: colors.CustomColors.searchBackground)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: colors.CustomColors.searchBackground)),
                                              hintText: 'Review',
                                              hintStyle:
                                              TextStyle(color: Colors.grey[500], fontSize: 12),
                                              fillColor: colors.CustomColors.searchBackground,
                                              filled: true,
                                            ),
                                          )),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                  SizedBox(height: 80,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
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
                                            child: Text("Submit", style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white)),
                                          ))
                                    ],
                                  ),
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
                      child: Text("Leave a Review!", style: GoogleFonts.poppins(
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
                      child: Text("Proceed", style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                    ))
              ],
            ),


          ],
        ),
      ),
    );
  }
}
