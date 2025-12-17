import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/buba.dart';
import 'package:mult/donomomomo.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/qunduzamaki.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Container3Page extends StatefulWidget {
  const Container3Page({super.key});

  @override
  State<Container3Page> createState() => _Container3PageState();
}

class _Container3PageState extends State<Container3Page> {
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
          title: Text("Internet yo'q"),
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

  Widget _buildMovieCard({
    required String imageUrl,
    required String title,
    required String episodes,
    required VoidCallback onTap,
    required List<Color> lightGradient,
    required Color iconColor,
    required BuildContext context,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = Theme.of(context).cardColor;
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.white;

    return Container(
      decoration: BoxDecoration(
        gradient: isDark ? null : LinearGradient(colors: lightGradient),
        color: isDark ? cardColor : null,
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
                image: CachedNetworkImageProvider(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: isDark ? textColor : Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  episodes,
                  style: TextStyle(
                    fontSize: 15,
                    color: isDark ? textColor : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: onTap,
            icon: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Icon(
                CupertinoIcons.play_circle_fill,
                color: isDark ? Colors.white : iconColor,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isDark
                ? [Colors.black, Colors.grey[900]!]
                : [Color(0xff017292), Color(0xff091645)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: DelayedDisplay(
            delay: Duration(seconds: 1),
            child: Column(
              children: [
                // Qunduz bobo
                _buildMovieCard(
                  imageUrl:
                      "https://qgq.weebly.com/uploads/2/5/1/3/25135086/6995122_orig.jpg",
                  title: "qunduz bobo",
                  episodes: "Jami: 11",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qunduzamaki()),
                  ),
                  lightGradient: [
                  Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                  ],
                  iconColor: Colors.white,
                  context: context,
                ),
                SizedBox(height: 20),

                // Dono Momomo
                _buildMovieCard(
                  imageUrl:
                      "https://media.licdn.com/dms/image/v2/D4D22AQG7hVLNRGwJSw/feedshare-shrink_800/B4DZPVqITWHcAs-/0/1734456418504?e=2147483647&v=beta&t=IDkVTw324QXxDJskSJiVl5qeqye8UjN20io8ZXGdLO8",
                  title: "Dono Momomo",
                  episodes: "Jami: 14",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donomomomo()),
                  ),
                  lightGradient: [
       Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                  ],
                  iconColor: Colors.white,
                  context: context,
                ),
                SizedBox(height: 20),

                // Doppi Pomidor
                _buildMovieCard(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOoYUMVmd1_DeGPxelgHnRgjtbKQOPMFOuHg&s",
                  title: "Doppi Pomidor",
                  episodes: "Jami: 45-min",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Doppipomidor()),
                  ),
                  lightGradient: [
               Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                  ],
                  iconColor: Colors.white,
                  context: context,
                ),
                SizedBox(height: 20),

                // Buba
                _buildMovieCard(
                  imageUrl: "https://i.ytimg.com/vi/NFf43HYDYa0/sddefault.jpg",
                  title: " Buba",
                  episodes: "Jami: 32",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Buba()),
                  ),
                  lightGradient: [
                   Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                    Colors.cyan,
                  ],
                  iconColor: Colors.white,
                  context: context,
                ),
                SizedBox(height: 25),

                Center(
                  child: Container(
                    width: 250,
                    height: 55,
                    decoration: BoxDecoration(
                      color: isDark
                          ? Theme.of(context).cardColor
                          : Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Yana Tez Kunda !",
                        style: TextStyle(
                          color: isDark
                              ? Theme.of(context).textTheme.bodyLarge?.color
                              : Colors.white,
                        ),
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
