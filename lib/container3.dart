import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/buba.dart';
import 'package:mult/donomomomo.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/qunduzamaki.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

// Container 3
class Container3Page extends StatelessWidget {
  const Container3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff017292), Color(0xff091645)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: DelayedDisplay(
            delay: Duration(seconds: 1),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue[900]!,
                        Colors.blue[700]!,
                        Colors.blue[400]!,
                        Colors.white24,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  height: 105,
                  child: Row(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://qgq.weebly.com/uploads/2/5/1/3/25135086/6995122_orig.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "qunduz bobo",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 11",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Spacer(),

                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Qunduzamaki(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.blue,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepOrange[900]!,
                        Colors.deepOrange[700]!,
                        Colors.deepOrange[400]!,
                        Colors.white24,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  height: 105,
                  child: Row(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://media.licdn.com/dms/image/v2/D4D22AQG7hVLNRGwJSw/feedshare-shrink_800/B4DZPVqITWHcAs-/0/1734456418504?e=2147483647&v=beta&t=IDkVTw324QXxDJskSJiVl5qeqye8UjN20io8ZXGdLO8",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Dono Momomo",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 14",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Donomomomo(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.deepOrange,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange[900]!,
                        Colors.orange[700]!,
                        Colors.orange[400]!,
                        Colors.white24,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  height: 105,
                  child: Row(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOoYUMVmd1_DeGPxelgHnRgjtbKQOPMFOuHg&s",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Doppi Pomidor",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 45-min",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Doppipomidor(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.orange,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[900]!,
                        Colors.pink[700]!,
                        Colors.pink[400]!,
                        Colors.white24,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  height: 105,
                  child: Row(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "https://i.ytimg.com/vi/NFf43HYDYa0/sddefault.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              " Buba",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 32",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Buba()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.pink[300],
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: Container(
                    width: 250,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Yana Tez Kunda !",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
