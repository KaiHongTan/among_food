import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class VegeHouse extends StatefulWidget {
  const VegeHouse({Key? key}) : super(key: key);


  @override
  _VegeHouseState createState() => _VegeHouseState();
}

class _VegeHouseState extends State<VegeHouse> {
  int _selectedPage = 0;
  PageController _pageController = PageController();

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(pageNum,
          duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? selection = "Regular";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("img/vegehouseterbalik.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        )),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 30,
                    ))),
                Expanded(child: Container()),
                Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("4.5",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white)),
                      Icon(Icons.star,color: Colors.white,size: 18,)
                    ],
                  ),
                ),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 0,),
            Expanded(child:
            DraggableScrollableSheet(
              initialChildSize: 0.77,
              minChildSize: 0.77,
              maxChildSize: 0.98,
              builder: (context, scrollController){
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Row(children: [
                          SizedBox(width: 20,),
                          Text("Vege House", style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: colors.CustomColors.greytext)),
                        ]),
                        Row(children: [
                          SizedBox(width: 20,),
                          Text("Chinese, Vegan", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: colors.CustomColors.text4)),
                        ]),
                        SizedBox(height: 15,),
                        Row(children: [
                          SizedBox(width: 20,),
                          Text("Description", style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: colors.CustomColors.greytext)),
                        ]),
                        Row(children: [
                          SizedBox(width: 20,),
                          Flexible(child:
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: colors.CustomColors.text4))),
                        ]),
                        SizedBox(height: 10,),
                        Row(children: [
                          SizedBox(width: 20,),
                          Flexible(child:
                          Text("Location", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: colors.CustomColors.text4))),
                        ]),
                        Row(children: [
                          SizedBox(width: 20,),
                          Flexible(child:
                          Text("95, Jalan SS 15/4b,  Ss 15, Subang Jaya, Selangor", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: colors.CustomColors.text4))),
                        ]),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TabButton(
                              text: "MENU",
                              pageNumber: 0,
                              selectedPage: _selectedPage,
                              onPressed: () {
                                _changePage(0);
                              },
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            TabButton(
                              text: "REVIEWS",
                              pageNumber: 1,
                              selectedPage: _selectedPage,
                              onPressed: () {
                                _changePage(1);
                              },
                            ),
                          ],
                        ),
                    Container(
                      height: 869,
                            child:
                    PageView(
                      onPageChanged: (int page) {
                        setState(() {
                          _selectedPage = page;
                        });
                      },
                      controller: _pageController,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Center(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'img/Chilifriedrice1.png',
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fitWidth,
                                                alignment: Alignment.center,
                                              )))),
                                  Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 25,),
                                          Text("Chili Fried Rice",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: colors.CustomColors.text3)),
                                          Text(
                                              "Rice, Egg, Chili, Carrot, Green Onion",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: colors.CustomColors.text4)),
                                          SizedBox(height: 20,),
                                          Row(children:[
                                            Text(
                                                "RM 10",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ]),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                            Expanded(child: Container()),
                                            GestureDetector(
                                                onTap: (){
                                                  showModalBottomSheet<void>(
                                                      context: context,
                                                      isScrollControlled: true,
                                                      backgroundColor: Colors.transparent,
                                                      builder: (BuildContext context) {
                                                        return StatefulBuilder(
                                                            builder: (BuildContext context, StateSetter setState2,){
                                                              return Container(
                                                                height: MediaQuery.of(context).size.height * 0.6,
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
                                                                        Expanded(child: Container()),
                                                                        GestureDetector(
                                                                            onTap: () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child: Icon(Icons.close)),
                                                                        SizedBox(
                                                                          width: 10,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height: 20,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        Expanded(
                                                                            flex:3,
                                                                            child: Center(
                                                                                child: ClipRRect(
                                                                                    borderRadius:
                                                                                    BorderRadius.circular(10),
                                                                                    child: Image.asset(
                                                                                      'img/Chilifriedrice1.png',
                                                                                      width: 80,
                                                                                      height: 80,
                                                                                      fit: BoxFit.fitWidth,
                                                                                      alignment: Alignment.center,
                                                                                    )))),
                                                                        Expanded(
                                                                            flex:7,
                                                                            child: Column(
                                                                          children: [
                                                                            Text("Chili Fried Rice",
                                                                                style: GoogleFonts.poppins(
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    color: colors.CustomColors.text4)),
                                                                            Container(
                                                                              width: 100,
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(color: Colors.black),
                                                                                borderRadius: BorderRadius.circular(20)
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Text("-"),
                                                                                  SizedBox(width: 20,),
                                                                                  Text("1",style: GoogleFonts.poppins(
                                                                                      fontSize: 16,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      color: Colors.black)),
                                                                                  SizedBox(width: 20,),
                                                                                  Text("+"),
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ))
                                                                      ],),
                                                                    SizedBox(height: 20,),
                                                                    Column(
                                                                      children: <Widget>[
                                                                        ListTile(
                                                                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                                                          title: Text("Regular", style: GoogleFonts.roboto(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: Colors.black)),
                                                                          leading: Radio<String>(
                                                                            value: "Regular",
                                                                            groupValue: selection,
                                                                            onChanged: (String? value){
                                                                            },
                                                                          ),
                                                                        ),
                                                                        ListTile(
                                                                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                                                          title: Text("Large (+ RM 2.00)", style: GoogleFonts.roboto(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: Colors.black)),
                                                                          leading: Radio<String>(
                                                                            value: "large",
                                                                            groupValue: selection,
                                                                            onChanged: (String? value){

                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 40,),
                                                                    Container(
                                                                      width: MediaQuery.of(context).size.width - 50,
                                                                      height: 35,
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(10),
                                                                          border: Border.all(color: Colors.black),
                                                                          ),
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
                                                                                  hintText: 'Special Instructions',
                                                                                  hintStyle:
                                                                                  TextStyle(color: Colors.grey[500], fontSize: 12),
                                                                                  fillColor: colors.CustomColors.searchBackground,
                                                                                  filled: false,
                                                                                ),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(height: 40,),
                                                                    Row(
                                                                      children: [
                                                                        SizedBox(width: 30,),
                                                                        Text("Total",style: GoogleFonts.roboto(
                                                                            fontSize: 14,
                                                                            fontWeight: FontWeight.w400,
                                                                            color: Colors.black)),
                                                                        SizedBox(width: 250,),
                                                                        Text("RM 10",style: GoogleFonts.roboto(
                                                                            fontSize: 14,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: Colors.black))
                                                                      ],
                                                                    ),
                                                                    SizedBox(height: 20,),
                                                                    Container(
                                                                        height: 40,
                                                                        width: 130,
                                                                        alignment: Alignment.center,
                                                                        decoration: BoxDecoration(
                                                                            color: colors.CustomColors.darkOrange,
                                                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                                                        ),
                                                                        child: Row(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [Text("Add to cart",
                                                                              style: GoogleFonts.poppins(
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],))
                                                                  ],
                                                                ),
                                                              );
                                                            });


                                                      });
                                                },
                                                child:
                                            Container(
                                              height: 30,
                                              width: 130,
                                              alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: colors.CustomColors.darkOrange,
                                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [Text("Add to cart",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],))),
                                            SizedBox(width: 20,)
                                          ],),
                                        ],
                                      )),
                                ],
                              ), //Chili Fried Rice
                              SizedBox(height: 20,),
                              Container(
                                width: MediaQuery.of(context).size.width-30,
                                child: Divider(color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Center(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'img/Eggfriedrice21.png',
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fitHeight,
                                                alignment: Alignment.center,
                                              )))),
                                  Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 25,),
                                          Text("Egg Fried Rice",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: colors.CustomColors.text3)),
                                          Text(
                                              "Rice, Egg, Green Onion, Sesame Seed",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: colors.CustomColors.text4)),
                                          SizedBox(height: 20,),
                                          Row(children:[
                                            Text(
                                                "RM 10",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ]),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                  height: 30,
                                                  width: 130,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: colors.CustomColors.darkOrange,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [Text("Add to cart",
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],)),
                                              SizedBox(width: 20,)
                                            ],),
                                        ],
                                      )),
                                ],
                              ), //Egg Fried Rice
                              SizedBox(height: 20,),
                              Container(
                                width: MediaQuery.of(context).size.width-30,
                                child: Divider(color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Center(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'img/chinesegreen.png',
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fitHeight,
                                                alignment: Alignment.center,
                                              )))),
                                  Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 25,),
                                          Text("Chinese Green With Oyster Sauce",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: colors.CustomColors.text3)),
                                          Text(
                                              "Chinese Green, Oyster Sauce",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: colors.CustomColors.text4)),
                                          SizedBox(height: 20,),
                                          Row(children:[
                                            Text(
                                                "RM 6",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ]),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                  height: 30,
                                                  width: 130,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: colors.CustomColors.darkOrange,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [Text("Add to cart",
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],)),
                                              SizedBox(width: 20,)
                                            ],),
                                        ],
                                      )),
                                ],
                              ), //Chinese Green
                              SizedBox(height: 20,),
                              Container(
                                width: MediaQuery.of(context).size.width-30,
                                child: Divider(color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Center(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'img/stirfry.png',
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fitHeight,
                                                alignment: Alignment.center,
                                              )))),
                                  Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20,),
                                          Text("Stir Fry Mix Vegetables",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: colors.CustomColors.text3)),
                                          Text(
                                              "Lotus Root, Carrot, Green Beans, Baby Corn",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: colors.CustomColors.text4)),
                                          SizedBox(height: 0,),
                                          Row(children:[
                                            Text(
                                                "RM 8",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ]),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                  height: 30,
                                                  width: 130,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: colors.CustomColors.darkOrange,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [Text("Add to cart",
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],)),
                                              SizedBox(width: 20,)
                                            ],),
                                        ],
                                      )),
                                ],
                              ), // Mixed Vegetables
                              SizedBox(height: 20,),
                              Container(
                                width: MediaQuery.of(context).size.width-30,
                                child: Divider(color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Center(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'img/tofu.png',
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fitHeight,
                                                alignment: Alignment.center,
                                              )))),
                                  Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 25,),
                                          Text("Soy Bean Mixed Tofu",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: colors.CustomColors.text3)),
                                          Text(
                                              "Soy Bean, Tofu, Vegetables",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: colors.CustomColors.text4)),
                                          SizedBox(height: 20,),
                                          Row(children:[
                                            Text(
                                                "RM 8",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ]),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                  height: 30,
                                                  width: 130,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color: colors.CustomColors.darkOrange,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [Text("Add to cart",
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white)), Icon(Icons.arrow_right_alt_rounded, color: Colors.white,)],)),
                                              SizedBox(width: 20,)
                                            ],),
                                        ],
                                      )),
                                ],
                              ), //Tofu
                              SizedBox(height: 20,),
                              Container(
                                width: MediaQuery.of(context).size.width-30,
                                child: Divider(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              Image(image: AssetImage('img/Reviews1.png')),
                              Image(image: AssetImage('img/Reviews1.png'))
                            ],
                          ),
                        ),
                      ])),
                      ],
                    ),
                  ),
                );
              },
            ))

          ],
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final int? selectedPage;
  final int? pageNumber;
  final Function() onPressed;

  TabButton(
      {required this.text,
        this.selectedPage,
        this.pageNumber,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: selectedPage == pageNumber
                        ? colors.CustomColors.underline
                        : Colors.white,
                    width: 2,
                  ))),
          child: Text(
            text,
            style:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
