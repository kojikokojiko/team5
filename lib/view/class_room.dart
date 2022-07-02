import 'package:flutter/material.dart';

import 'insert_data_page.dart';
import 'listpage.dart';

class ClassRoom extends StatelessWidget {
  const ClassRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ようこそ"),
      ),
      body: Center(
        child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: "グループ名",
                    icon: Icon(Icons.group_add),
                  ),
                ),
                // Flutter1.22以降のみ
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ListPage();
                          },
                        ),
                      );

                    },
                    child: const Text(
                      '次へ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
