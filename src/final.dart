import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class fin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Page',
      home: fin_run(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class fin_run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("page_fin"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                //なぜか縦方向に中央寄せできないから無理やりスペース入れてる
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('space'),
                    Text('space'),
                  ],
                ),
              ),
              Container(
                //テキトーボタン１
                width: double.infinity,
                height: 130,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('go to page1'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('B'),
                    )
                  ],
                ),
              ),
              Container(
                //テキトーボタン２
                width: double.infinity,
                height: 150,
                color: Colors.yellow[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => page1(),
                            ));
                      },
                      icon: Icon(Icons.thumb_up),
                      label: Text('good'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.thumb_down),
                      label: Text('bad'),
                    ),
                  ],
                ),
              ),
              Container(
                //カレンダーアイコンとか乗っける用
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('some one will draw a'),
                    Text('wonderful carender image'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
