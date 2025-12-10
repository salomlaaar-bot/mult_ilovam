import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:mult/buba.dart';
import 'package:mult/bugu.dart';
import 'package:mult/quloqpiter.dart';
import 'package:mult/smurflar.dart';
import 'package:mult/tomvajerry.dart';

// Container 2
class Container2Page extends StatelessWidget {
  const Container2Page({super.key});

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
                        Colors.purple[900]!,
                        Colors.purple[700]!,
                        Colors.purple[400]!,
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
                              "https://i.okcdn.ru/i?r=BDFSTM1h2o92P_v-s8DgGlgYlZDYTcWDzQAGyQYN4k--wbd3-BVvOWH9F7bwQhXkI-s&fn=external_8",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Uzunquloq Piter",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 1",
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
                              builder: (context) => Quloqpiter(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.purple,
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
                        Colors.teal[900]!,
                        Colors.teal[700]!,
                        Colors.teal[400]!,
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
                              "https://i.ytimg.com/vi/5Y-NzcLuRIQ/maxresdefault.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Smurflar.dart",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 90-min",
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
                            MaterialPageRoute(builder: (context) => Smurflar()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.teal,
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
                SizedBox(height: 20),
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
                              "https://static.wikia.nocookie.net/cartoonnetwork/images/b/b5/Tom-and-jerry-1-.jpg/revision/latest/thumbnail/width/360/height/450?cb=20110312161830",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Tom va Jerry",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 60-min",
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
                              builder: (context) => Tomvajerry(),
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
                              "https://uzbeklar.biz/uploads/posts/2023-12/1701404525_1.jpg",
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
                              "Bug'uning Parvozi",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 1",
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
                            MaterialPageRoute(builder: (context) => Bugu()),
                          );
                        },

                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.deepOrange[900],
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
