import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mult/boshoyna.dart';
import 'package:mult/buba.dart';
import 'package:mult/hammasi.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _AsosiyState();
}

class _AsosiyState extends State<Bottombar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [BoshSahifa(), const Hammasii()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff017292),
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 65,
        index: _selectedIndex,
        items: <Widget>[
          // HOME
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A5AE0), Color(0xFF8A4FFF)],
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Icon(Icons.home, size: 28, color: Colors.white),
          ),

          // LIST (o‘zgartirilgan)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A5AE0), Color(0xFF8A4FFF)], // shu rang
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Icon(Icons.list, size: 28, color: Colors.white),
          ),

          // SETTINGS (o‘zgartirilgan)
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
