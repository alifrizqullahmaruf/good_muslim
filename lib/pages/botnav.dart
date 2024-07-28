import 'package:flutter/material.dart';
import 'package:good_muslim/pages/event_screen.dart';
import 'package:good_muslim/pages/komunitas_screen.dart';
import 'package:good_muslim/pages/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotNav(),
    );
  }
}

class BotNav extends StatefulWidget {
  const BotNav({super.key});

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TaskScreen(),
    KomunitasScreen(),
    EventScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.task),
                SizedBox(width: 8),
                Text('Tasks'),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.people),
                SizedBox(width: 8),
                Text('Komunitas'),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.event),
                SizedBox(width: 8),
                Text('Events'),
              ],
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
