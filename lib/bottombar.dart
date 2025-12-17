import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mult/boshoyna.dart';
import 'package:mult/buba.dart';
import 'package:mult/hammasi.dart';
import 'package:mult/sozlamalar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _AsosiyState();
}

class _AsosiyState extends State<Bottombar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [BoshSahifa(), const Hammasii(), Sozlamalar1()];

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
        backgroundColor: Colors.transparent,
        color:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
            Theme.of(context).primaryColor,
        buttonBackgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[850]
            : Colors.white,
        height: 65,
        index: _selectedIndex,
        items: <Widget>[
          _buildNavItem(Icons.home),
          _buildNavItem(Icons.list),
          _buildNavItem(Icons.settings),
        ],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildNavItem(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey[800]!, Colors.grey[900]!], // item gradient
        ),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Icon(icon, size: 28, color: Colors.white),
    );
  }
}
