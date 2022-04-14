import 'package:flutter/material.dart';
import 'package:uts_flutter/screens/home/widget/best_sell.dart';
import 'package:uts_flutter/screens/home/widget/custom_app_bar.dart';
import 'package:uts_flutter/screens/home/widget/new_arrival.dart';
import 'package:uts_flutter/screens/home/widget/search_input.dart';

class HomePage extends StatelessWidget {
  final bottomList = ['home', 'menu', 'heart', 'user'];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 2: Heart',
      style: optionStyle,
    ),
    Text(
      'Index 3: User',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TOKO BAJUA',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSell(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomList
            .map(
              (e) => BottomNavigationBarItem(
                label: e,
                icon: Image.asset(
                  'assets/icons/$e.png',
                  width: 30,
                ),
              ),
            )
            .toList(),
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
