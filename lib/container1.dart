import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:mult/anaxolos.dart';
import 'package:mult/avtosarguzash.dart';
import 'package:mult/ballerina.dart';
import 'package:mult/buba.dart';
import 'package:mult/bugu.dart';
import 'package:mult/dinozavr.dart';
import 'package:mult/donomomomo.dart';
import 'package:mult/doppipomidor.dart';
import 'package:mult/endidada.dart';
import 'package:mult/fiksiklar.dart';
import 'package:mult/ichkuyov.dart';
import 'package:mult/karlson.dart';
import 'package:mult/kelgindikeln.dart';
import 'package:mult/maugli.dart';
import 'package:mult/nikolya.dart';
import 'package:mult/novda.dart';
import 'package:mult/nupogadi.dart';
import 'package:mult/nussa.dart';
import 'package:mult/qarsildoq.dart';
import 'package:mult/qorboboni.dart';
import 'package:mult/qunduzamaki.dart';
import 'package:mult/sehrliboshmoq.dart';
import 'package:mult/smurflar.dart';
import 'package:mult/tundan.dart';
import 'package:mult/uchargilam.dart';
import 'package:mult/uchbaxodir.dart';
import 'package:mult/uddaburon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Container1Page extends StatefulWidget {
  const Container1Page({super.key});

  @override
  State<Container1Page> createState() => _Container1PageState();
}

class _Container1PageState extends State<Container1Page> {
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
              child: IconTheme(
                data: IconThemeData(color: isDark ? Colors.white : iconColor),
                child: Icon(CupertinoIcons.play_circle_fill, size: 40),
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
                // Fiksiklar
                _buildMovieCard(
                  imageUrl:
                      "https://static.tildacdn.one/tild3732-6534-4466-b434-393134396436/fiksiki_digital_.png",
                  title: "Fiksiklar",
                  episodes: "Jami: 30",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fiksiklar()),
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

                // Uchargilam
                _buildMovieCard(
                  imageUrl:
                      "https://topkinolar.com/uploads/posts/2022-02/1644421766-286872024.webp",
                  title: "Uchargilam",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uchargilam()),
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

                // Uch Bahodir
                _buildMovieCard(
                  imageUrl:
                      "https://asilmedia.org/uploads/mini/shortstory/8e/x010e245557f259af7a2eedc20bddc2.jpg.pagespeed.ic.rEhihArGQN.jpg",
                  title: "Uch Bahodir",
                  episodes: "Jami: 2",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uchbaxodir()),
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

                // Qunduz bobo
                _buildMovieCard(
                  imageUrl:
                      "https://qgq.weebly.com/uploads/2/5/1/3/25135086/6995122_orig.jpg",
                  title: "Qunduz bobo",
                  episodes: "Jami:11",
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

                // Nu Pogadi
                _buildMovieCard(
                  imageUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLI2_BjjvdUCyUfvxryW4AC_7frZFdVbBIg&s",
                  title: "Nu Pogadi",
                  episodes: "Jami: 125-min ",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Nupogadi()),
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

                // Kichkina Nikolya
                _buildMovieCard(
                  imageUrl:
                      "https://i.ytimg.com/vi/N4JtwG_1cpc/sddefault.jpg?sqp=-oaymwEmCIAFEOAD8quKqQMa8AEB-AH-BIAC6AKKAgwIABABGH8gLygTMA8=&rs=AOn4CLAs97Kpr8l8bUOBpPKpovHpdIN6Xg",
                  title: "Kichkina Nikolya",
                  episodes: "Jami: 75-min",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Nikolya()),
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
                SizedBox(height: 20),

                // Smurflar
                _buildMovieCard(
                  imageUrl:
                      "https://i.ytimg.com/vi/5Y-NzcLuRIQ/maxresdefault.jpg",
                  title: "Smurflar",
                  episodes: "Jami: 90-min",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Smurflar()),
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

                // Avtosarguzash
                _buildMovieCard(
                  imageUrl:
                      "https://files.itv.uz/uploads/content/snapshots/2023/08/20/47a415c7de6b4be43b6268a8fd41977d.jpg",
                  title: "Avtosarguza..",
                  episodes: "Jami: 50-min",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Avtosarguzash()),
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

                // Sehrli Boshmoq
                _buildMovieCard(
                  imageUrl:
                      "https://uzbeklar.biz/uploads/posts/2021-04/1619290284-2043164278-4.jpg",
                  title: "Sehrli Boshmoq",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sehrliboshmoq()),
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

                // Maugli
                _buildMovieCard(
                  imageUrl:
                      "https://st.kp.yandex.net/im/kadr/3/3/3/kinopoisk.ru-Terra-Willy_3A-Plan_26egrave_3Bte-inconnue-3333973.jpg",
                  title: "Maugli: Yovvoyi...",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Maugli()),
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
                // Bug'uning Parvozi
                _buildMovieCard(
                  imageUrl:
                      "https://uzbeklar.biz/uploads/posts/2023-12/1701404525_1.jpg",
                  title: "Bug'uning Parvozi",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bugu()),
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

                // Nussa Va Rara
                _buildMovieCard(
                  imageUrl: "https://wallpapercave.com/wp/wp6326121.jpg",
                  title: "Nussa Va Rara",
                  episodes: "Jami: 2-fasl",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Nussa()),
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

                // Onazavr
                _buildMovieCard(
                  imageUrl:
                      "https://daxshat.net/uploads/posts/2021-09/1631252175_s48a4s8q.jpg",
                  title: "Onazavr",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dinozavr()),
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

                // Qorboboni Qutqarish
                _buildMovieCard(
                  imageUrl:
                      "https://img.kinochilar.com/uploads/posts/2023-10/1649617572-447116891-spasti-santu.jpg",
                  title: "Qorboboni Qutq...",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qorboboni()),
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

                // Qarsildoq
                _buildMovieCard(
                  imageUrl:
                      "https://images.uzmovi.tv/ii/1578831899/5fac5de7/29179326.jpg",
                  title: "Qarsildoq ",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qarsildoq()),
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
                // Uddaburon
                _buildMovieCard(
                  imageUrl:
                      "https://cdn.splay.uz/media/contents_meta/deti-shpionov-4d/images/poster_v.jpg",
                  title: "Uddaburon bol...",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uddaburon()),
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

                // Karlson
                _buildMovieCard(
                  imageUrl:
                      "https://uzbeklar.biz/uploads/posts/2021-03/1615483238-1146626109-3.jpg",
                  title: "Karlson",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Karlson()),
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

                // Ballerina
                _buildMovieCard(
                  imageUrl:
                      "https://www.youloveit.ru/uploads/gallery/main/941/youloveit_ru_multfilm_balerina_kartinki0.jpg",
                  title: "Ballerina",
                  episodes: "Jami: 1",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ballerina()),
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
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
