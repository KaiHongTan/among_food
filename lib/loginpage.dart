import 'package:flutter/material.dart';
import 'colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colors.CustomColors.background,
        body: Container(
            child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                        child: Image.asset(
                      'img/logo.png',
                      width: 120,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ))
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabButton(
                      text: "Login",
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
                      text: "Sign Up",
                      pageNumber: 1,
                      selectedPage: _selectedPage,
                      onPressed: () {
                        _changePage(1);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: PageView(
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
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 80,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Username / Mobile Number',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 70,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 50),
                            child: GestureDetector(
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
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      GestureDetector(
                                                          onTap: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: Icon(Icons.arrow_back_ios_new_rounded)),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(width: 40,),
                                                    Text('Forgot',
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 24,
                                                            fontWeight: FontWeight.w600,
                                                            color: colors.CustomColors.darkOrange))
                                                  ],),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(width: 40,),
                                                      Text('Password?',
                                                          style: GoogleFonts.poppins(
                                                              fontSize: 24,
                                                              fontWeight: FontWeight.w600,
                                                              color: colors.CustomColors.darkOrange))
                                                    ],),
                                                  SizedBox(height: 20,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(width: 40,),
                                                      Flexible(child:
                                                      Text('If you have an account with us, we will send you an email to reset your password.',
                                                          style: GoogleFonts.poppins(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w400,
                                                              color: colors.CustomColors.text4))),
                                                      SizedBox(width: 40,),
                                                    ],),
                                                  SizedBox(height: 30,),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width - 80,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: colors.CustomColors.searchBackground),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Icon(
                                                          Icons.email,
                                                          color: Colors.grey[500],
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
                                                                hintText: 'Enter your email address',
                                                                hintStyle:
                                                                TextStyle(color: Colors.grey[500], fontSize: 12),
                                                                fillColor: colors.CustomColors.searchBackground,
                                                                filled: true,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 30,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: (){
                                                          },
                                                          child: Container(
                                                            child: Center(
                                                              child: Text(
                                                                "Send Code",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.white),
                                                              ),
                                                            ),
                                                            width: MediaQuery.of(context).size.width - 100,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(30),
                                                                color: colors.CustomColors.darkOrange),
                                                          )),
                                                    ],
                                                  )

                                                ],
                                              ),
                                            );
                                          });


                                    });
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: colors.CustomColors.underline,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/location');
                          },
                            child: Container(
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: colors.CustomColors.darkOrange),
                        )),
                      ],
                    )
                  ],
                )),
                Container(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Register',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: colors.CustomColors.darkOrange),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Full Name',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Mobile Number',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 70,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 300,
                            height: 100,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/location');
                            },
                            child: Container(
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: colors.CustomColors.darkOrange),
                        )),
                      ],
                    )
                  ],
                )),
              ],
            )),
          )
        ])));
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
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
