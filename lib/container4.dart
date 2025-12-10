import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/buba.dart';

import 'package:mult/doppipomidor.dart';
import 'package:mult/farishta.dart';
import 'package:mult/ivangrozny.dart';
import 'package:mult/novda.dart';
import 'package:mult/operatsiyai.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:mult/qaysarginam.dart';
import 'package:mult/uylanish.dart';

// Container 3
class Container4Page extends StatelessWidget {
  const Container4Page({super.key});

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
                              "https://files.itv.uz/uploads/content/poster/2019/03/30/5d6c354cb81820eb1ac0c3b3cea86abf-q-700x1002.jpeg",
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
                              "Operatsiya ы",
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
                              builder: (context) => Operatsiyai(),
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
                              "https://uzmax.net/uploads/posts/2021-12/1638305060_ivan-vasilevich-kasbini-ozgartiradi-1973-uzbek-tilida.jpg",
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
                              "Ivan Vaseylivich ",
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
                              builder: (context) => Ivangrozny(),
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
                              "https://files.itv.uz/uploads/content/poster/2024/10/04/86db9805bb6404fc3f846387353cf5d8-q-700x1002.jpeg",
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
                              "Uylanish",
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
                            MaterialPageRoute(builder: (context) => Uylanish()),
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
                              "https://files.itv.uz/uploads/content/poster/2020/12/02/1fee2671254d0bcd51eab7aee92dc3fa-q-700x1002.jpeg",
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
                              "Qaysarginam",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 2",
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
                              builder: (context) => Qaysarginam(),
                            ),
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
                        const Color.fromARGB(255, 28, 1, 162)!,
                        const Color.fromARGB(255, 28, 17, 240)!,
                        const Color.fromARGB(255, 104, 67, 203)!,
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
                              "https://lh3.googleusercontent.com/oKn3UwkEHQtTghm7PGwNryQ-l3L220aezXAip8VrSkyFMDlL2XrG0mQZwrl9EWScoNOmAH790ULb_ETs=w544-h544-l90-rj",
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
                              "Sevgi farishtasi",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 2",
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
                            MaterialPageRoute(builder: (context) => Farishta()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 28, 1, 162),
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
                        const Color.fromARGB(255, 255, 64, 0)!,
                        const Color.fromARGB(255, 229, 164, 52)!,
                        const Color.fromARGB(255, 232, 198, 75)!,
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
                              "https://m.media-amazon.com/images/M/MV5BNDkyOTk4OTYtMGYwYy00NjdkLWI3OTctZGJiMjJmNjNjNThlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
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
                              "Asal Oyi",
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
                            MaterialPageRoute(builder: (context) => Farishta()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 255, 64, 0),
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
                        const Color.fromARGB(255, 255, 0, 230),
                        const Color.fromARGB(255, 233, 52, 236),
                        const Color.fromARGB(255, 240, 142, 243),
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
                              "https://www.kino-teatr.ru/movie/posters/big/7/5/174457.jpg",
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
                              "Novda",
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
                            MaterialPageRoute(builder: (context) => Novda()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 255, 0, 230),
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
