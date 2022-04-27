import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:50, left:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child:
                Row(children: [
                  Icon(Icons.arrow_back_ios_rounded),
                  Text("Help",
                      style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black))
                ],)),
            SizedBox(height: 80,),
            Row(
              children: [
                Text("Frequenty asked questions:", style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black))
              ],
            ),
            SizedBox(height: 30,),
            Container(
              child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 5,),
                    Expanded(flex:1,child: Text("Q:", style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))),
                    Expanded(flex:12,child: Text("Can I modify the order list after adding the foods to cart?", style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))
                  ],
                ),
            ),
            SizedBox(height: 10,),
            Container(
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Expanded(flex:1,child: Text("A:", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
                  Expanded(flex:13,child: Text("Yes you can, just go to the cart section and tap on “Edit” if you want to make changes on the food or tap “Remove” if you want to remove the food from the order list.", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Expanded(flex:1,child: Text("Q:", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
                  Expanded(flex:13,child: Text("Is it still possible to change the food ordered after placing the order?", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Expanded(flex:1,child: Text("A:", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
                  Expanded(flex:13,child: Text("Is possible if the restaurant have not prepared the food yet. You can contact the restaurant through the live chat to check with them.", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)))
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(height: 80,),
            Row(
              children: [
                Text("If you have more questions, feel free to:", style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black))
              ],
            ),
            SizedBox(height: 30,),
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
                                      Text('AmongFood Live Chat',
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
                                            child: Text("Hi, this is the customer service center, how can I help you?"),)]),
                                        SizedBox(height: 395,),
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
                      child: Text("Live Chat", style: GoogleFonts.poppins(
                          fontSize: 16,
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
