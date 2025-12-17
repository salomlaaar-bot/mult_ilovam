import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mult/main.dart';
import 'package:mult/oxirgikorilganlar.dart';

class Sozlamalar1 extends StatelessWidget {
  const Sozlamalar1({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = Theme.of(context).brightness == Brightness.dark;

    Color cardColor = Theme.of(context).cardColor;
    Color textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.white;

    Widget customTile({
      required IconData icon,
      required String title,
      required VoidCallback onTap,
      Color? iconColor,
      Widget? trailing,
    }) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Icon(icon, color: iconColor ?? Colors.blue),
          title: Text(title, style: TextStyle(fontSize: 18, color: textColor)),
          trailing:
              trailing ??
              Icon(
                CupertinoIcons.chevron_right,
                color: Theme.of(context).iconTheme.color,
              ),
          onTap: onTap,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.settings),
        title: Text("Sozlamalar"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            /// 🌙 Dark / Light Mode
            Obx(
              () => Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(
                    themeController.isDarkMode.value
                        ? CupertinoIcons.moon_fill
                        : CupertinoIcons.sun_max_fill,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "Tungi rejim",
                    style: TextStyle(fontSize: 18, color: textColor),
                  ),
                  trailing: CupertinoSwitch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) => themeController.toggleTheme(),
                    activeColor: Colors.blue,
                  ),
                ),
              ),
            ),

            /// ⏱ Oxirgi ko'rilganlar
            customTile(
              icon: CupertinoIcons.clock_fill,
              title: "Oxirgi ko'rilganlar",
              iconColor: Colors.teal,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OxirgiKorilganlar()),
                );
              },
            ),

            /// 🔗 Ulashish
            customTile(
              icon: Icons.share,
              title: "Do'stlarga ulashish",
              iconColor: Colors.purple,
              trailing: Icon(
                Icons.arrow_upward,
                color: Theme.of(context).iconTheme.color,
              ),
              onTap: () {
                Share.share(
                  "Zo'r multfilmlar ilovasi!\nYuklab ol 👇\nhttps://t.me/qoqonyaypanbozori_n1",
                );
              },
            ),

            /// 🧹 Keshni tozalash (hozircha xabar ko'rsatadi)
            customTile(
              icon: CupertinoIcons.delete_solid,
              title: "Keshni tozalash",
              iconColor: Colors.redAccent,
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kesh tozalandi ✔")));
              },
            ),

            customTile(
              icon: CupertinoIcons.question_circle,
              title: "Yordam !",
              iconColor: Colors.redAccent,
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    final isDark =
                        Theme.of(context).brightness == Brightness.dark;

                    return Center(
                      child: Container(
                        width: 350,
                        height: 450,
                        decoration: BoxDecoration(
                          color: isDark
                              ? Theme.of(context).cardColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Agar ilovada kamchiliklar bo'lsa,",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "iltimos, murojaat qiling",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Divider(),
                                SizedBox(height: 20),
                                Text(
                                  "Ulug'bek Sultonmurodov",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                // Telegram textini bosiladigan qildik
                                GestureDetector(
                                  onTap: () async {
                                    final Uri telegramUrl = Uri.parse(
                                      'https://t.me/Ulugbecck',
                                    );

                                    try {
                                      if (await canLaunchUrl(telegramUrl)) {
                                        await launchUrl(
                                          telegramUrl,
                                          mode: LaunchMode.externalApplication,
                                        );
                                      } else {
                                        Get.snackbar(
                                          "Xatolik",
                                          "Telegram ochilmadi",
                                          snackPosition: SnackPosition.BOTTOM,
                                        );
                                      }
                                    } catch (e) {
                                      Get.snackbar(
                                        "Xatolik",
                                        "Telegram ochishda muammo",
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    }
                                  },
                                  child: Text(
                                    "Telegram: @Ulugbecck",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Agar Video Sifati past bo'lsa,",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Internet tezligini tekshiring.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Ko'rmoqchi bo'lgan videongiz ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "ilovada bo'lmasa.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Tg manzilga murojatt qiling.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Tez orada Talablar Bajariladi!",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).textTheme.bodyLarge?.color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            /// ℹ Ilova haqida
            customTile(
              icon: CupertinoIcons.info_circle,
              title: "Ilova haqida",
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    backgroundColor: cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    title: Text(
                      "Ilova haqida",
                      style: TextStyle(color: textColor),
                    ),
                    content: Text(
                      "Ilova Nomi Multfilmlar "
                      "Versiya: 1.0.0\n"
                      "Muallif: Ulug'bek Sultonmurodov",
                      style: TextStyle(fontSize: 16, color: textColor),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text("Yopish"),
                      ),
                    ],
                  ),
                );
              },
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
