import 'package:flutter/material.dart';
import 'package:good_muslim/pages/event_screen.dart';
import 'package:good_muslim/pages/komunitas_screen.dart';
import 'package:good_muslim/pages/task_screen.dart';


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

  Widget _buildNavItem(String label, IconData icon, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF5FB39B).withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Color(0xFF5FB39B) : Colors.grey),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Color(0xFF5FB39B) : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
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
            icon: _buildNavItem('Tasks', Icons.task, _selectedIndex == 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem('Komunitas', Icons.people, _selectedIndex == 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem('Events', Icons.event, _selectedIndex == 2),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
