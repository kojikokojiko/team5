import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),

      margin: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
      // color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.military_tech,
                      // color: Color.fromRGBO(245, 209, 0, 0),
                    ),
                    Text("酒井さん"),
                  ],
                ),

                Text("所要時間 : 40分"),
              ],
            ),
            Divider(),
            Row(
              children: [
                // Icon(
                //   Icons.military_tech,
                //   color: CmykColor(255, 0, 0, 1.0),
                // ),
                Text("酒井さん"),
                Text("所要時間 : 40分"),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("酒井さん"),
                Text("所要時間 : 40分"),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("酒井さん"),
                Text("所要時間 : 40分"),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("酒井さん"),
                Text("所要時間 : 40分"),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
    ;
  }
}
