import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Sozlamalar1 extends StatelessWidget {
  const Sozlamalar1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.settings),
        title: Text("Sozlamalar"),
        centerTitle: false,
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: Icon(CupertinoIcons.info_circle, color: Colors.blue),
            title: Text(
              "Ilova haqida",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            tileColor: Colors.white,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    title: Text("Ilova haqida"),
                    content: Text(
                      "Bu ilova Ulug'bek tomonidan yaratilgan.\n"
                      "Versiya: 1.0.0\n"
                      "Muallif: Ulug'bek Sultonmurodov",
                      style: TextStyle(fontSize: 16),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Yopish"),
                      ),
                    ],
                  );
                },
              );
            },
          ),

          SizedBox(height: 5),

          Divider(thickness: 0.8, indent: 15, endIndent: 15),
        
        ],
      ),
    );
  }
}
