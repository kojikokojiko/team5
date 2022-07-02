import 'package:flutter/material.dart';

import 'insert_data_page.dart';
import 'listpage.dart';


class ClassRoom extends StatelessWidget {
  const ClassRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dfjdfldsjflk"),
      ),

      body: Container(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListPage()));

          },
          child: Text("移動"),

        ),
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InsertDataPage()),
          );

        },
      ),
    );
  }
}
