import 'package:flutter/material.dart';
import 'package:telegram_redesign/resources/colors.dart';
import 'package:telegram_redesign/screens/call_screen.dart';
import 'package:telegram_redesign/screens/contacts_screen.dart';
import 'package:telegram_redesign/screens/homescreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CallScreen(),
    Center(
      child: Text(
        'Index 2: Group',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: Settings',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 4) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const ContactsScreen())));
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 68.h,
        child: BottomNavigationBar(
          backgroundColor: black,
          selectedLabelStyle: const TextStyle(fontSize: 0, color: white),
          unselectedLabelStyle: const TextStyle(fontSize: 0, color: white),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                size: 22.h,
                // color: grey900,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
                size: 22.h,
                // color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_page,
                size: 22.h,
                // color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 22.h,
                // color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Container(
                    height: 42.h,
                    width: 42.h,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: black),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 14.h,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
