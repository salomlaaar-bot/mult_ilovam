import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/asaloyi.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/endidada.dart';
import 'package:mult/farishta.dart';
import 'package:mult/fotima.dart';
import 'package:mult/hifi.dart';
import 'package:mult/ichkuyov.dart';
import 'package:mult/ivangrozny.dart';
import 'package:mult/kelgindikeln.dart';
import 'package:mult/novda.dart';
import 'package:mult/olingquda.dart';
import 'package:mult/operatsiyai.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:mult/oshiqlar.dart';
import 'package:mult/qaysarginam.dart';
import 'package:mult/anaxolos.dart';
import 'package:mult/qutqaring.dart';
import 'package:mult/sariqdev.dart';
import 'package:mult/sehrliqalpoqcha.dart';
import 'package:mult/tundan.dart';
import 'package:mult/uylanish.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mult/visol.dart';

class Container4Page extends StatefulWidget {
  const Container4Page({super.key});

  @override
  State<Container4Page> createState() => _Container4PageState();
}

class _Container4PageState extends State<Container4Page> {
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
                // Operatsiya ы
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/poster/2019/03/30/5d6c354cb81820eb1ac0c3b3cea86abf-q-700x1002.jpeg",
                  title: "Operatsiya ы",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Operatsiyai()),
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

                // Ivan Vaseylivich
                _buildMovieCard(
                  imageUrl:
                      "https://uzmax.net/uploads/posts/2021-12/1638305060_ivan-vasilevich-kasbini-ozgartiradi-1973-uzbek-tilida.jpg",
                  title: "Ivan Vaseylivich ",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ivangrozny()),
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

                // Uylanish
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/poster/2024/10/04/86db9805bb6404fc3f846387353cf5d8-q-700x1002.jpeg",
                  title: "Uylanish",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uylanish()),
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

                // Qaysarginam
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/poster/2020/12/02/1fee2671254d0bcd51eab7aee92dc3fa-q-700x1002.jpeg",
                  title: "Qaysarginam",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qaysarginam()),
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

                // Sevgi farishtasi
                _buildMovieCard(
                  imageUrl:
                      "https://lh3.googleusercontent.com/oKn3UwkEHQtTghm7PGwNryQ-l3L220aezXAip8VrSkyFMDlL2XrG0mQZwrl9EWScoNOmAH790ULb_ETs=w544-h544-l90-rj",
                  title: "Sevgi farishtasi",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Farishta()),
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

                // Asal Oyi
                _buildMovieCard(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BNDkyOTk4OTYtMGYwYy00NjdkLWI3OTctZGJiMjJmNjNjNThlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                  title: "Asal Oyi",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Asaloyi()),
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

                // Novda
                _buildMovieCard(
                  imageUrl:
                      "https://www.kino-teatr.ru/movie/posters/big/7/5/174457.jpg",
                  title: "Novda",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Novda()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/e7706c76-f980-49a6-bc69-6b91a4ca1cb5/600x900",
                  title: "Ana Xolos",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Anaxolos()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://s3.beelinetv.uz/buz-production/ba27a1d0e4de07213a8f.jpg",
                  title: "Endi Dadam B...",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EndiDadamBoydoq()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/uz/3/37/Tundan_tonggacha_%28poster%29.jpg",
                  title: "tundan tongg...",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TundanTonggacha()),
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
                _buildMovieCard(
                  imageUrl: "https://ykino.ucoz.com/_sf/50/16998498.jpg",
                  title: "Kelgindi kelin",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kelgindikeln()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://mw.tvcom.uz/media/upload/tvmiddleware/posters/51083/pb_poster.webp",
                  title: "Ichkuyov",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ichkuyov()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/poster/2023/10/16/3305f9171d9ed3bdaa2885c47f87ff48-q-700x1002.jpeg",
                  title: "Oling Quda",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Olingquda()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://www.kino-teatr.ru/movie/posters/big/0/4/102640.jpg",
                  title: "Oshiqlar",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Oshiqlar()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://i.okcdn.ru/i?r=BDFSTM1h2o92P_v-s8DgGlgYlR6YKblf7xHRjetGVJzWARgWBZTfLH5G3Ah8sNb56nM&fn=external_8",
                  title: "Qutaqring sev...",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qutqaring()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BNmRjM2QyNWItNWQ0YS00NTI0LTk1Y2YtNzhjNTNjMmNmZTQ5XkEyXkFqcGc@._V1_.jpg",
                  title: "Visol",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Visol()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/poster/2024/02/11/10a9f7bc5be7e57c5c42b1de596bec01-q-700x1002.jpeg",
                  title: "Hi-fi Bolakay",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hifi()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://mw.tvcom.uz/media/upload/tvmiddleware/posters/52213/pb_poster.webp",
                  title: "Fotima va ...",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fotima()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://mw.tvcom.uz/media/upload/tvmiddleware/posters/56624/pb_poster.webp",
                  title: "Sehrli Qalpoqcha",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sehrliqalpoqcha()),
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
                _buildMovieCard(
                  imageUrl:
                      "https://mw.tvcom.uz/media/upload/tvmiddleware/posters/55486/pb_poster.webp",
                  title: "Sariq devni Minib",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sariqdev()),
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
