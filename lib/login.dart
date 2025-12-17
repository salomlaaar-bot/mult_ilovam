import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mult/boshoyna.dart';
import 'package:mult/bottombar.dart';
import 'package:mult/uchbaxodir.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _TraveloynaState();
}

class _TraveloynaState extends State<Login>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const Center(
              child: SpinKitCircle(color: Colors.white, size: 60),
            );
          },
        );
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Bottombar()),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0172B2), Color(0xFF001645)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SlideTransition(
          position: _animation,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 310,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 250,
                              width: 150,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://cdn-icons-png.flaticon.com/512/714/714043.png",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Multfilmlar",
                              style: GoogleFonts.acme(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
