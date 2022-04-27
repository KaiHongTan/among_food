import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({Key? key}) : super(key: key);

  @override
  _ManageAccountState createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
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
              Text("Manage Account",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black))
            ],)),
            SizedBox(height: 80,),
            Container(
              padding: const EdgeInsets.only(left:20),
              alignment: Alignment.centerLeft,
              height: 50,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors.CustomColors.button2
              ),
              child: Text("Change ID & Password",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(left:20),
              alignment: Alignment.centerLeft,
              height: 50,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors.CustomColors.button2
              ),
              child: Text("Change Profile Picture",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(left:20),
              alignment: Alignment.centerLeft,
              height: 50,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors.CustomColors.button2
              ),
              child: Text("Change Name, Email, Phone No",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.only(left:20),
              alignment: Alignment.centerLeft,
              height: 50,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors.CustomColors.button2
              ),
              child: Text("Change Delivery Address",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),

          ],
        ),
      ),
    );
  }
}
