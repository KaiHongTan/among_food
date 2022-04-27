import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
              Text("Your Cart",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black))
            ],),
            SizedBox(height: 50,),
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
              height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: colors.CustomColors.address,
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
                      child:Icon(Icons.home_outlined, color: colors.CustomColors.home,size: 40,)),
                  Expanded(
                    flex: 13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home",style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                      Text("Jalan Lagoon Selatan, Bandar Sunway, 47500 Subang Jaya, Selangor",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black))
                    ],
                  ))
                ],
              ),])
            )),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Divider(color: Colors.grey),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Center(
                        child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(10),
                            child: Image.asset(
                              'img/Chilifriedrice1.png',
                              width: 65,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            )))),
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chili Fried Rice (Regular)",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: colors.CustomColors.text3)),
                        Text(
                            "Vege House",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: colors.CustomColors.text4)),
                        SizedBox(height: 20,),
                        Row(children:[
                          Text(
                            "Quantity: 1",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.black)),
                          Expanded(child: Container()),
                          Text(
                              "RM 10",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          SizedBox(width: 20,)

                        ])
                      ],
                    )),
              ],
            ), //Fried Rice
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(flex: 2, child: Container()),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: colors.CustomColors.darkOrange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                                child: Text("Edit",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))),
                            Expanded(child: Container()),
                            Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: colors.CustomColors.darkOrange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                                child: Text("Remove",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))),
                            SizedBox(width: 20,)
                          ],
                        )
                      ],
                    )),
              ],
            ), //End of Fried Rice
            Container(
              width: MediaQuery.of(context).size.width,
              child: Divider(color: Colors.grey),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Center(
                        child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(10),
                            child: Image.asset(
                              'img/tofu.png',
                              width: 65,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center,
                            )))),
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Soya Bean Mixed Tofu",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: colors.CustomColors.text3)),
                        Text(
                            "Vege House",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: colors.CustomColors.text4)),
                        SizedBox(height: 20,),
                        Row(children:[
                          Text(
                              "Quantity: 2",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          Expanded(child: Container()),
                          Text(
                              "RM 16",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          SizedBox(width: 20,)

                        ])
                      ],
                    )),
              ],
            ), //Tofu
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(flex: 2, child: Container()),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: colors.CustomColors.darkOrange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                                child: Text("Edit",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))),
                            Expanded(child: Container()),
                            Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: colors.CustomColors.darkOrange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                                child: Text("Remove",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white))),
                            SizedBox(width: 20,)
                          ],
                        )
                      ],
                    )),
              ],
            ), //End of Tofu
            Container(
              width: MediaQuery.of(context).size.width,
              child: Divider(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.only(left:0),
              child: Column(
                  children: [
                    Row(
                children: [
                  Text("Subtotal", style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
                  Expanded(child: Container()),
                  Text("RM 26", style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
                ],
              ),
                    Row(
                      children: [
                        Text("Delivery", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                        Expanded(child: Container()),
                        Text("RM 3", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Total", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                        Expanded(child: Container()),
                        Text("RM 29", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                      ],
                    ),
            ])),
            SizedBox(height: 20),
            Center(child:
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/checkout');
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
              child: Text("Check out", style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
            )))



          ],
        ),
      ),
    );
  }
}
