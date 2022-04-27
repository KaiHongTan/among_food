import 'package:among_food/cart.dart';
import 'package:among_food/homepage.dart';
import 'package:among_food/locationpage.dart';
import 'package:among_food/profile.dart';
import 'package:among_food/search.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
  return [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
        title: Text("Home"),

      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text("Search"),

      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
        title: Text("Cart"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined),
        title: Text("Account"),
      ),    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(),
        Search(),
        Cart(),
        Profile()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
  }

