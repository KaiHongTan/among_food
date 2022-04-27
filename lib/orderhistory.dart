import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:50, left:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:
              Icon(Icons.arrow_back_ios_rounded)),
              Text("Order History",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black))
            ],),
            SizedBox(height: 20,),

            Row(
              children: [
                Text("Order ID",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                SizedBox(width: 100,),
                Text("Food",style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("ABC12345",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                SizedBox(width: 20,),
                Column(children: [
                Text("1x Chili Fried Rice (Regular)",style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                  Text("2x Soy Bean Mixed Tofu",style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
                ]),
                SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child:
                Container(
                    height: 40,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: colors.CustomColors.darkOrange,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Reorder",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))],)))

              ],
            ),
          ],
        ),
      ),
    );
  }
}
