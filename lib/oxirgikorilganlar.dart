import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:mult/fiksiklar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class OxirgiKorilganlar extends StatefulWidget {
  const OxirgiKorilganlar({super.key});

  @override
  State<OxirgiKorilganlar> createState() => _OxirgiKorilganlarState();
}

class _OxirgiKorilganlarState extends State<OxirgiKorilganlar> {
  List<Map<String, String>> _history = [];

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final String? historyJson = prefs.getString('watch_history');

    if (historyJson != null) {
      final List<dynamic> decoded = json.decode(historyJson);
      setState(() {
        _history = decoded
            .map((item) => Map<String, String>.from(item))
            .toList();
      });
    }
  }

  Future<void> _clearHistory() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('watch_history');
    setState(() {
      _history = [];
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Tarix tozalandi")));
  }

  Future<void> _removeItem(int index) async {
    setState(() {
      _history.removeAt(index);
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('watch_history', json.encode(_history));

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("O'chirildi")));
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Oxirgi ko'rilganlar"),
        centerTitle: false,
        actions: [
          if (_history.isNotEmpty)
            IconButton(
              icon: Icon(CupertinoIcons.trash),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Theme.of(context).cardColor,
                    title: Text("Hammasini o'chirish?"),
                    content: Text("Barcha tarix o'chib ketadi"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Bekor qilish"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _clearHistory();
                        },
                        child: Text(
                          "O'chirish",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
      body: _history.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.film, size: 80, color: Colors.grey),
                  SizedBox(height: 20),
                  Text(
                    "Hali hech narsa ko'rmadingiz",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _history.length,
              itemBuilder: (context, index) {
                final item = _history[index];
                return Dismissible(
                  key: Key('${item['title']}_$index'),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(CupertinoIcons.trash, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    _removeItem(index);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: isDark
                            ? [Colors.grey[850]!, Colors.grey[800]!]
                            : [Colors.blue[50]!, Colors.purple[50]!],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              item['image'] ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        item['title'] ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white : Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        item['date'] ?? '',
                        style: TextStyle(
                          fontSize: 12,
                          color: isDark ? Colors.grey[400] : Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

// Video sahifalarida saqlanishi uchun funksiya
class HistoryHelper {
  static Future<void> addToHistory({
    required String title,
    required String imageUrl,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final String? historyJson = prefs.getString('watch_history');

    List<Map<String, String>> history = [];

    if (historyJson != null) {
      final List<dynamic> decoded = json.decode(historyJson);
      history = decoded.map((item) => Map<String, String>.from(item)).toList();
    }

    // Agar allaqachon mavjud bo'lsa, o'chirish
    history.removeWhere((item) => item['title'] == title);

    // Yangi elementni boshiga qo'shish
    history.insert(0, {
      'title': title,
      'image': imageUrl,
      'date': DateTime.now().toString().substring(0, 16),
    });

    // Faqat 20 ta saqlab qolish
    if (history.length > 20) {
      history = history.sublist(0, 20);
    }

    await prefs.setString('watch_history', json.encode(history));
  }
}
