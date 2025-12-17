import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mult/boshoyna.dart';
import 'package:mult/bottombar.dart';
import 'package:mult/fiksiklar.dart';
import 'package:mult/login.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Theme Controller
class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadTheme();
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> toggleTheme() async {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode.value);
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.blueAccent),
  );
  runApp(const YoutubePlayerDemoApp());
}

class YoutubePlayerDemoApp extends StatelessWidget {
  const YoutubePlayerDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeController'ni yuklash
    final ThemeController themeController = Get.put(ThemeController());

    return GetMaterialApp(
      // MaterialApp o'rniga GetMaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Youtube Player Flutter',

      // Light Theme
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        cardColor: Colors.white,
      ),

      // Dark Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850],
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
        cardColor: Colors.grey[850],
      ),

      themeMode: ThemeMode.system,
      home: Login(),
    );
  }
}
