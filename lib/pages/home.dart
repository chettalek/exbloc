
import 'package:exbloc/pages/homescreen.dart';
import 'package:exbloc/pages/listapi.dart';
import 'package:exbloc/priceapi.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller = PageController(
    initialPage: 0,
    keepPage: false,
  );
  int _selectedIndex = 0;
  List<Widget> page = [homescreen(), listapi(), priceapi()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _controller.animateToPage(_selectedIndex,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          pageSnapping: true,
          controller: _controller,
          children: page),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.blue[900],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HomeScreen',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Price',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
