import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mult/container1.dart';
import 'package:mult/container2.dart';
import 'package:mult/container3.dart';
import 'package:mult/container4.dart';

// Asosiy oyna
class Hammasii extends StatefulWidget {
  const Hammasii({super.key});

  @override
  State<Hammasii> createState() => _HammasiiState();
}

class _HammasiiState extends State<Hammasii> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Container1Page(),
    Container2Page(),
    Container3Page(),
    Container4Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        title: Text(
          "Barcha Multfilmlar",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(CupertinoIcons.bars, color: Colors.white),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xff017292),
      body: Column(
        children: [
          // 3 ta container
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: List.generate(4, (index) {
                  final titles = [
                    "Hamma Multfilmlar",
                    "Hayvonlar Haqida",
                    "Bolalar uchun",
                    "Kinolar Uzb Tilida"
                  ];

                  // Rangni tanlash: tanlangan container purple, qolganlar blue
                  final color = _selectedIndex == index
                      ? Colors.blue
                      : Colors.purple[400];

                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            titles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}
