import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mult/buba.dart';
import 'package:mult/cr7andmessi10.dart';
import 'package:mult/dinozavr.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/fiksiklar.dart';
import 'package:mult/nupogadi.dart';
import 'package:mult/nussa.dart';
import 'package:mult/qorboboni.dart';
import 'package:mult/sariqdev.dart';
import 'package:mult/sehrliqalpoqcha.dart';
import 'package:photo_view/photo_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:delayed_display/delayed_display.dart';

class BoshSahifa extends StatefulWidget {
  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  bool hasInternet = false;
  bool _bool = true;
  @override
  void initState() {
    super.initState();
    checkConnectivity();

    // Internet holatini kuzatish
    Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> result,
    ) {
      setState(() {
        hasInternet = result != ConnectivityResult.none;
      });
    });
  }

  Future<void> checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      hasInternet = connectivityResult != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Sarlavha", style: TextStyle(color: Colors.white)),
        centerTitle: false,
        leading: Icon(CupertinoIcons.home, color: Colors.white),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff091645), Color(0xff017292)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 105),
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 185,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          enlargeCenterPage: true,
                          viewportFraction: 0.95,
                        ),
                        items: [
                          Container(
                            width: 370,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.cyan,
                                  Colors.deepPurpleAccent[200]!,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Nussa Va",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Rara",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          109,
                                          223,
                                          212,
                                        ).withOpacity(0.3),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Nussa(),
                                                ),
                                              );
                                            },
                                            icon: Icon(
                                              CupertinoIcons.play_circle,
                                              color: Colors.red[500],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "Korish",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 210,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          "https://cdn.timesmedia.co.id/images/2021/01/13/Nussa-dan-Rara.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Birinchi container - Sehrli Qalpoqcha
                          Container(
                            width: 370,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.cyan,
                                  Colors.deepPurpleAccent[200]!,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Sehrli",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Qalpoqcha",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          109,
                                          223,
                                          212,
                                        ).withOpacity(0.3),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Sehrliqalpoqcha(),
                                                ),
                                              );
                                            },
                                            icon: Icon(
                                              CupertinoIcons.play_circle,
                                              color: Colors.red[500],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "Korish",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 210,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          "https://i.ytimg.com/vi/nWQS38wkEzE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLChoYtgZCu-ScMaHK-19RVVutESeg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Ikkinchi container - Fiksiklar
                          Container(
                            width: 370,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.cyan,
                                  Colors.deepPurpleAccent[200]!,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Sariq",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Devni Minib",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      CircleAvatar(
                                        backgroundColor: Colors.white
                                            .withOpacity(0.3),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Sariqdev(),
                                                ),
                                              );
                                            },
                                            icon: Icon(
                                              CupertinoIcons.play_circle,
                                              color: Colors.red[500],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "Korish",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 210,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          "https://i.ytimg.com/vi/yKnOFT4EVx0/hqdefault.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.cyan,
                                  Colors.deepPurpleAccent[200]!,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "CR7 ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "and ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "LM10",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          109,
                                          223,
                                          212,
                                        ).withOpacity(0.3),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cr7andmessi10(),
                                                ),
                                              );
                                            },
                                            icon: Icon(
                                              CupertinoIcons.play_circle,
                                              color: Colors.red[500],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Container(
                                  width: 230,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        "https://tmssl.akamaized.net//images/foto/galerie/rm-spotlight-1706720313-128049.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 370,
                    height: 600,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.cyan, Colors.deepPurple],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 60),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DelayedDisplay(
                              delay: Duration(seconds: 1),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 180,
                                    height: 247,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Container(
                                            width: 170,
                                            height: 190,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://static.okko.tv/images/v4/29df8060-1638-47cf-a827-41414cc52e47?scale=1&quality=80",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Fiksiklar",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Fiksiklar(),
                                                    ),
                                                  );
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.play_circle,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 180,
                                    height: 247,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Container(
                                            width: 170,
                                            height: 190,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLI2_BjjvdUCyUfvxryW4AC_7frZFdVbBIg&s",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Nu Pogadi",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Nupogadi(),
                                                    ),
                                                  );
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.play_circle,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 180,
                                    height: 247,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Container(
                                            width: 170,
                                            height: 190,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOoYUMVmd1_DeGPxelgHnRgjtbKQOPMFOuHg&s",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Pomidor",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Doppipomidor(),
                                                    ),
                                                  );
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.play_circle,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 180,
                                    height: 247,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Container(
                                            width: 170,
                                            height: 190,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://yt3.googleusercontent.com/Xy58L6dpS2F8sRuHjnVflUO33X1dL_oHg2M6kVlQ1Plon9xFyxl89VRydxUYZHgdA7cGFuFq=s900-c-k-c0x00ffffff-no-rj",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Buba",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Buba(),
                                                    ),
                                                  );
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.play_circle,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 180,
                                    height: 247,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Container(
                                            width: 170,
                                            height: 190,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://qgq.weebly.com/uploads/2/5/1/3/25135086/6995122_orig.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Qunduz..",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  CupertinoIcons.play_circle,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DelayedDisplay(
                              delay: Duration(seconds: 1),
                              child: Row(
                                children: [
                                  AnimatedCrossFade(
                                    firstChild: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Dinozavr(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 220,
                                        width: 175,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              "https://daxshat.net/uploads/posts/2021-09/1631252175_s48a4s8q.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    secondChild: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Dinozavr(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              "https://cdn.splay.uz/media/contents_meta/spasti-santu/images/poster_h.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                    crossFadeState: _bool
                                        ? CrossFadeState.showFirst
                                        : CrossFadeState.showSecond,
                                    duration: Duration(seconds: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _bool = !_bool;
                              });
                            },
                            child: Text(
                              "Keyingisini Ko'rish",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Tez Kunda Yangi Filmlar !")),
                  ),
                  Container(height: 50, width: double.infinity),
                ],
              ),
            ),
          ),

          // Internet yo'q ogohlantirish
          if (!hasInternet)
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.wifi_slash,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Internet yo'q!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Iltimos internetni ulang",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: checkConnectivity,
                        icon: Icon(CupertinoIcons.refresh, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
