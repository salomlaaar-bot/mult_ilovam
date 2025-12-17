import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mult/container1.dart';
import 'package:mult/container2.dart';
import 'package:mult/container3.dart';
import 'package:mult/container4.dart';

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
    Container4Page(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBodyBehindAppBar: true, // Body AppBar ostiga uzayadi
      appBar: AppBar(
        toolbarHeight: 35,
        title: Text(
          "Barcha Multfilmlar",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(CupertinoIcons.bars, color: Colors.white),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent, // Doim shaffof
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [Colors.black, Colors.grey[900]!]
                : [Color(0xff017292), Color(0xff0288a8)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Horizontal scroll categories
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
                        "Kinolar",
                      ];

                      final isSelected = _selectedIndex == index;

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
                              gradient: LinearGradient(
                                colors: isDark
                                    ? (isSelected
                                          ? [Colors.white, Colors.grey[300]!]
                                          : [
                                              Colors.grey[700]!,
                                              Colors.grey[800]!,
                                            ])
                                    : (isSelected
                                          ? [Colors.blue, Colors.blue[600]!]
                                          : [
                                              Colors.purple[400]!,
                                              Colors.purple[500]!,
                                            ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                    isDark ? 0.5 : 0.2,
                                  ),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                titles[index],
                                style: TextStyle(
                                  color: isDark && isSelected
                                      ? Colors.black
                                      : Colors.white,
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
        ),
      ),
    );
  }
}
