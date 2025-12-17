import 'dart:async';
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
import 'package:mult/qunduzamaki.dart';
import 'package:mult/sariqdev.dart';
import 'package:mult/sehrliqalpoqcha.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:delayed_display/delayed_display.dart';
class BoshSahifa extends StatefulWidget {
  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  bool _bool = true;
  late final StreamSubscription<List<ConnectivityResult>> _subscription;
  bool _isDialogShowing = false;

  @override
  void initState() {
    super.initState();

    _subscription = Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> results,
    ) {
      bool hasInternet =
          results.contains(ConnectivityResult.wifi) ||
          results.contains(ConnectivityResult.mobile) ||
          results.contains(ConnectivityResult.ethernet);
      if (!hasInternet) {
        if (!_isDialogShowing && mounted) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              _showNoInternetDialog();
            }
          });
        }
      } else {
        if (_isDialogShowing && mounted) {
          Navigator.of(context, rootNavigator: true).pop();
          _isDialogShowing = false;
        }
      }
    });
  }

  void _showNoInternetDialog() {
    if (_isDialogShowing) return;

    _isDialogShowing = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
        title: CircularProgressIndicator(),
          
          content: Text(
            "Iltimos, WiFi yoki mobil internetingizni yoqing va kuting...",
          ),
        ),
      ),
    ).then((_) {
      _isDialogShowing = false;
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
            color: isDark ? Colors.black : Color(0xff091645),
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
                          // Nussa Va Rara
                          _buildCarouselItem(
                            title1: "Nussa Va",
                            title2: "Rara",
                            imageUrl:
                                "https://cdn.timesmedia.co.id/images/2021/01/13/Nussa-dan-Rara.jpg",
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Nussa()),
                            ),
                            isDark: isDark,
                          ),
                          // Sehrli Qalpoqcha
                          _buildCarouselItem(
                            title1: "Sehrli",
                            title2: "Qalpoqcha",
                            imageUrl:
                                "https://i.ytimg.com/vi/nWQS38wkEzE/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLChoYtgZCu-ScMaHK-19RVVutESeg",
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sehrliqalpoqcha(),
                              ),
                            ),
                            isDark: isDark,
                          ),
                          // Sariq Dev
                          _buildCarouselItem(
                            title1: "Sariq",
                            title2: "Devni Minib",
                            imageUrl:
                                "https://i.ytimg.com/vi/yKnOFT4EVx0/hqdefault.jpg",
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sariqdev(),
                              ),
                            ),
                            isDark: isDark,
                          ),
                          // CR7 and LM10
                          _buildCarouselItemWide(
                            title: "CR7\nand\nLM10",
                            imageUrl:
                                "https://tmssl.akamaized.net//images/foto/galerie/rm-spotlight-1706720313-128049.png",
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cr7andmessi10(),
                              ),
                            ),
                            isDark: isDark,
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
                      color: isDark ? Colors.grey[850] : Colors.cyan,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DelayedDisplay(
                              delay: Duration(seconds: 1),
                              child: Row(
                                children: [
                                  _buildMovieCard(
                                    imageUrl:
                                        "https://static.okko.tv/images/v4/29df8060-1638-47cf-a827-41414cc52e47?scale=1&quality=80",
                                    title: "Fiksiklar",
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Fiksiklar(),
                                      ),
                                    ),
                                    isDark: isDark,
                                  ),
                                  SizedBox(width: 10),
                                  _buildMovieCard(
                                    imageUrl:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLI2_BjjvdUCyUfvxryW4AC_7frZFdVbBIg&s",
                                    title: "Nu Pogadi",
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Nupogadi(),
                                      ),
                                    ),
                                    isDark: isDark,
                                  ),
                                  SizedBox(width: 10),
                                  _buildMovieCard(
                                    imageUrl:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOoYUMVmd1_DeGPxelgHnRgjtbKQOPMFOuHg&s",
                                    title: "Pomidor",
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Doppipomidor(),
                                      ),
                                    ),
                                    isDark: isDark,
                                  ),
                                  SizedBox(width: 10),
                                  _buildMovieCard(
                                    imageUrl:
                                        "https://yt3.googleusercontent.com/Xy58L6dpS2F8sRuHjnVflUO33X1dL_oHg2M6kVlQ1Plon9xFyxl89VRydxUYZHgdA7cGFuFq=s900-c-k-c0x00ffffff-no-rj",
                                    title: "Buba",
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Buba(),
                                      ),
                                    ),
                                    isDark: isDark,
                                  ),
                                  SizedBox(width: 10),
                                  _buildMovieCard(
                                    imageUrl:
                                        "https://qgq.weebly.com/uploads/2/5/1/3/25135086/6995122_orig.jpg",
                                    title: "Qunduz..",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Qunduzamaki(),
                                        ),
                                      );
                                    },
                                    isDark: isDark,
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
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dinozavr(),
                                        ),
                                      ),
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
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Qorboboni(),
                                        ),
                                      ),
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
                              style: TextStyle(
                                color: isDark ? Colors.white : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  InkWell(
                    child: Container(
                      width: 300,
                      height: 35,
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.grey[800]
                            : Colors.teal.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Tez Kunda Yangi Filmlar !",
                          style: TextStyle(
                            color: isDark ? Colors.white : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 50, width: double.infinity),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Carousel item builder
  Widget _buildCarouselItem({
    required String title1,
    required String title2,
    required String imageUrl,
    required VoidCallback onPressed,
    required bool isDark,
  }) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800] : Colors.cyan,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(
                    fontSize: 22,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                ),
                Text(
                  title2,
                  style: TextStyle(
                    fontSize: 18,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.red[500],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Korish",
                  style: TextStyle(
                    fontSize: 20,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Container(
              width: 210,
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Carousel item wide (for CR7)
  Widget _buildCarouselItemWide({
    required String title,
    required String imageUrl,
    required VoidCallback onPressed,
    required bool isDark,
  }) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800] : Colors.cyan,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      CupertinoIcons.play_circle,
                      color: Colors.red[500],
                    ),
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          SizedBox(width: 50),
          Container(
            width: 230,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }

  // Movie card builder
  Widget _buildMovieCard({
    required String imageUrl,
    required String title,
    required VoidCallback onPressed,
    required bool isDark,
  }) {
    return Container(
      width: 180,
      height: 247,
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800] : Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: 170,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 3),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    CupertinoIcons.play_circle,
                    size: 30,
                    color: isDark ? Colors.white : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
