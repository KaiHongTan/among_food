import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Text("Personal Details",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black))
            ],),
            SizedBox(height: 50,),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Center(
                        child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(10),
                            child: Image.asset(
                              'img/Rectangle6.png',
                              width: 100,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            )))),
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Siti binti Ali",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: colors.CustomColors.text3)),
                        SizedBox(height: 10,),
                        Text(
                            "siti1234@gmail.com",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: colors.CustomColors.text4)),
                        SizedBox(height: 10,),
                        Text(
                            "016-1234567",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: colors.CustomColors.text4)),
                      ],
                    )),
              ],
            ), //Siti
            SizedBox(height: 50,),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/manageaccount');
                },
                child:
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text("Manage Account",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_rounded),
                    SizedBox(width: 30,),
                  ],
                ),),

            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/orderhistory');
              },
              child:
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Order History",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  Expanded(child: Container()),
                  Icon(Icons.arrow_forward_ios_rounded),
                  SizedBox(width: 30,),
                ],
              ),),

            SizedBox(height: 40,),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/settings');
                },
                child:
            Row(
              children: [
                SizedBox(width: 30,),
                Text("Settings",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios_rounded),
                SizedBox(width: 30,),
              ],
            )),
            SizedBox(height: 40,),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/faq');
                },
                child:
            Row(
              children: [
                SizedBox(width: 30,),
                Text("Help",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios_rounded),
                SizedBox(width: 30,),
              ],
            )),
            SizedBox(height: 40,),

            GestureDetector(
                onTap: (){
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
                child:Row(
                  children: [
                    SizedBox(width: 30,),
                    Text("Live Chat",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_rounded),
                    SizedBox(width: 30,),
                  ],
                )),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/loginpage');
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
                      child: Text("Log Out", style: GoogleFonts.poppins(
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
