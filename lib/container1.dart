import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/avtosarguzash.dart';
import 'package:mult/ballerina.dart';
import 'package:mult/buba.dart';
import 'package:mult/bugu.dart';
import 'package:mult/dinozavr.dart';
import 'package:mult/donomomomo.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/fiksiklar.dart';
import 'package:mult/karlson.dart';
import 'package:mult/maugli.dart';
import 'package:mult/nikolya.dart';
import 'package:mult/nupogadi.dart';
import 'package:mult/nussa.dart';
import 'package:mult/qarsildoq.dart';
import 'package:mult/qorboboni.dart';
import 'package:mult/qunduzamaki.dart';
import 'package:mult/sehrliboshmoq.dart';
import 'package:mult/smurflar.dart';
import 'package:mult/uchargilam.dart';
import 'package:mult/uchbaxodir.dart';
import 'package:mult/uddaburon.dart';
import 'package:photo_view/photo_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class Container1Page extends StatelessWidget {
  const Container1Page({super.key});
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
                        Colors.indigo[900]!,
                        Colors.indigo[700]!,
                        Colors.indigo[400]!,
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PhotoView(
                          imageProvider: CachedNetworkImageProvider(
                            "https://static.tildacdn.one/tild3732-6534-4466-b434-393134396436/fiksiki_digital_.png",
                          ),
                          minScale: 000.1,
                          maxScale: 000.1,
                          heroAttributes: const PhotoViewHeroAttributes(
                            tag: "rasm",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            Text(
                              "Fiksiklar",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 30",
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
                              builder: (context) => Fiksiklar(),
                            ),
                          );
                        },

                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.indigo,
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
                        Colors.deepPurple[900]!,
                        Colors.deepPurple[700]!,
                        Colors.deepPurple[400]!,
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
                              "https://topkinolar.com/uploads/posts/2022-02/1644421766-286872024.webp",
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
                              "Uchargilam",
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
                              builder: (context) => Uchargilam(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.deepPurple,
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
                        const Color.fromARGB(255, 255, 43, 146),
                        const Color.fromARGB(255, 255, 0, 166),
                        const Color.fromARGB(255, 237, 71, 215),
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
                              "https://asilmedia.org/uploads/mini/shortstory/8e/x010e245557f259af7a2eedc20bddc2.jpg.pagespeed.ic.rEhihArGQN.jpg",
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
                              "Uch Bahodir",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 19",
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
                              builder: (context) => Uchbaxodir(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.deepPurple,
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
                              "Qunduz bobo",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami:11",
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
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLI2_BjjvdUCyUfvxryW4AC_7frZFdVbBIg&s",
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
                              "Nu Pogadi",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 125-min ",
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
                            MaterialPageRoute(builder: (context) => Nupogadi()),
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
                              "https://i.ytimg.com/vi/N4JtwG_1cpc/sddefault.jpg?sqp=-oaymwEmCIAFEOAD8quKqQMa8AEB-AH-BIAC6AKKAgwIABABGH8gLygTMA8=&rs=AOn4CLAs97Kpr8l8bUOBpPKpovHpdIN6Xg",
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
                              "Kichkina Nikolya",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 75-min",
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
                            MaterialPageRoute(builder: (context) => Nikolya()),
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
                              "Smurflar",
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
                              "https://files.itv.uz/uploads/content/snapshots/2023/08/20/47a415c7de6b4be43b6268a8fd41977d.jpg",
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
                              "Avtosarguza..",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 50-min",
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
                              builder: (context) => Avtosarguzash(),
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
                        Colors.tealAccent,
                        Colors.tealAccent[700]!,
                        Colors.tealAccent[200]!,
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
                              "https://uzbeklar.biz/uploads/posts/2021-04/1619290284-2043164278-4.jpg",
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
                              "Sehrli Boshmoq",
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
                              builder: (context) => Sehrliboshmoq(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.tealAccent,
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
                        const Color.fromARGB(255, 61, 10, 214),
                        Color.fromARGB(255, 78, 33, 215),
                        Color.fromARGB(255, 111, 68, 238),
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
                              "https://st.kp.yandex.net/im/kadr/3/3/3/kinopoisk.ru-Terra-Willy_3A-Plan_26egrave_3Bte-inconnue-3333973.jpg",
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
                              "Maugli: Yovvoyi...",
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
                            MaterialPageRoute(builder: (context) => Maugli()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 61, 10, 214),
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
                              "https://wallpapercave.com/wp/wp6326121.jpg",
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
                              "Nussa Va Rara",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jami: 2-fasl",
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
                            MaterialPageRoute(builder: (context) => Nussa()),
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
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.brown[900]!,
                        Colors.brown[700]!,
                        Colors.brown[400]!,
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
                              "https://daxshat.net/uploads/posts/2021-09/1631252175_s48a4s8q.jpg",
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
                              "Onazavr",
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
                            MaterialPageRoute(builder: (context) => Dinozavr()),
                          );
                        },

                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.brown[900],
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
                              "https://img.kinochilar.com/uploads/posts/2023-10/1649617572-447116891-spasti-santu.jpg",
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
                              "Qorboboni Qutq...",
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
                              builder: (context) => Qorboboni(),
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
                        const Color.fromARGB(255, 13, 161, 65),
                        const Color.fromARGB(255, 99, 232, 125),
                        const Color.fromARGB(255, 52, 235, 168),
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
                              "https://images.uzmovi.tv/ii/1578831899/5fac5de7/29179326.jpg",
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
                              "Qarsildoq ",
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
                              builder: (context) => Qarsildoq(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 13, 161, 65),
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
                        Colors.deepPurple[900]!,
                        Colors.deepPurple[700]!,
                        Colors.deepPurple[400]!,
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
                              "https://cdn.splay.uz/media/contents_meta/deti-shpionov-4d/images/poster_v.jpg",
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
                              "Uddaburon bol...",
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
                              builder: (context) => Uddaburon(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: Colors.deepPurple,
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
                        const Color.fromARGB(255, 255, 187, 0),
                        const Color.fromARGB(255, 239, 215, 83),
                        const Color.fromARGB(255, 222, 215, 18),
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
                              "https://uzbeklar.biz/uploads/posts/2021-03/1615483238-1146626109-3.jpg",
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
                              "Karlson",
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
                            MaterialPageRoute(builder: (context) => Karlson()),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 255, 187, 0),
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
                        const Color.fromARGB(255, 0, 247, 255),
                        const Color.fromARGB(255, 83, 236, 239),
                        const Color.fromARGB(255, 82, 200, 204),
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
                              "https://www.youloveit.ru/uploads/gallery/main/941/youloveit_ru_multfilm_balerina_kartinki0.jpg",
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
                              "Ballerina",
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
                              builder: (context) => Ballerina(),
                            ),
                          );
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Icon(
                            CupertinoIcons.play_circle,
                            color: const Color.fromARGB(255, 0, 247, 255),
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
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Yana Tez Kunda !",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
