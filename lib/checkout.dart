import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int ? time = 0;
  String? paymentMethod = "FPX Online Banking";
  TimeOfDay selectedTime = TimeOfDay.now();
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
              Text("Check Out",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black))
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 10,),
              Text("Delivery address",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))
            ],),
            SizedBox(height: 15,),
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
                                      GestureDetector(
                                          onTap: (){Navigator.pop(context);},
                                          child:
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
                                            ),))
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
                child:
                Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: colors.CustomColors.darkOrange,
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child:Icon(Icons.home_outlined, color: Colors.white,size: 40,)),
                            Expanded(
                                flex: 13,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Home",style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                    Text("Jalan Lagoon Selatan, Bandar Sunway, 47500 Subang Jaya, Selangor",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white))
                                  ],
                                ))
                          ],
                        ),])
                )),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                  color: colors.CustomColors.searchBackground),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
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
                          hintText: 'Special Delivery Instructions',
                          hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 12),
                          fillColor: colors.CustomColors.searchBackground,
                          filled: true,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 10,),
              Text("Delivery Time",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))
            ],),
            Column(
              children: <Widget>[
                ListTile(
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  title: Text("As soon as possible", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
                  leading: Radio<int>(
                    value: 0,
                    groupValue: time,
                    onChanged: (int? value){
                      setState(() {
                        time = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  title: Text("Schedule Time", style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
                  leading: Radio<int>(
                    value: 1,
                    groupValue: time,
                    onChanged: (int? value){
                      setState(() {
                        time = value;
                      });
                    },
                  ),
                ),
                Row(children: [
                  SizedBox(width: 80,),
                  Text("${selectedTime.format(context)}", style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
                  SizedBox(width: 5,),
                  GestureDetector(
                      onTap: (){
                        _selectTime(context);
                      },
                      child: Container(child:
                  Icon(Icons.edit_outlined, size: 18,)))
                ],)
              ],
            ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 10,),
              Text("Payment Method",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))
            ],),
            SizedBox(height: 15,),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState2,){
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.4,
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
                                      Text('Payment Methods',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      ListTile(
                                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                        title: Text("FPX Online Banking", style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                        leading: Radio<String>(
                                          value: "FPX Online Banking",
                                          groupValue: paymentMethod,
                                          onChanged: (String? value){
                                            setState2(() {
                                              paymentMethod = value;
                                            });
                                            setState(() {
                                              paymentMethod = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                        title: Text("Credit/Debit Card", style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                        leading: Radio<String>(
                                          value: "Credit/Debit Card",
                                          groupValue: paymentMethod,
                                          onChanged: (String? value){
                                            setState(() {
                                              paymentMethod = value;
                                            });
                                            setState2(() {
                                              paymentMethod = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                        title: Text("E-Wallet", style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                        leading: Radio<String>(
                                          value: "E-Wallet",
                                          groupValue: paymentMethod,
                                          onChanged: (String? value){
                                            setState(() {
                                              paymentMethod = value;
                                            });
                                            setState2(() {
                                              paymentMethod = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                        title: Text("Cash On Delivery", style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                        leading: Radio<String>(
                                          value: "Cash On Delivery",
                                          groupValue: paymentMethod,
                                          onChanged: (String? value){
                                            setState(() {
                                              paymentMethod = value;
                                            });
                                            setState2(() {
                                              paymentMethod = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                        });


                      });
                },
                child:
                Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: colors.CustomColors.darkOrange,
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 2,
                                child:Icon(Icons.attach_money, color: Colors.white,size: 40,)),
                            Expanded(
                                flex: 13,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Payment Method",style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                    Text("${paymentMethod}",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white))
                                  ],
                                ))
                          ],
                        ),])
                )),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 10,),
              Text("Order Summary",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))
            ],),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("1x Chili Fried Rice (Regular)", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                Expanded(child: Container()),
                Text("RM 10", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("2x Soy Bean Mixed Tofu", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                Expanded(child: Container()),
                Text("RM 16", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 30,),
                Text("Subtotal", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                Expanded(child: Container()),
                Text("RM 26", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
                SizedBox(width: 30,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 30,),
                Text("Delivery", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                Expanded(child: Container()),
                Text("RM 3", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
                SizedBox(width: 30,),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 30,),
                Text("Total", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
                Expanded(child: Container()),
                Text("RM 29", style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
                SizedBox(width: 30,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ontheway');
                    },
                    child:
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: colors.CustomColors.darkOrange,
                      ),
                      child: Text("Place Order", style: GoogleFonts.poppins(
                          fontSize: 14,
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
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
