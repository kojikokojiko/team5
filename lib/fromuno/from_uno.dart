import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> taskList = ["国語辞書", "英語単語帳", "歴史", "数学ドリル"];
  List<String> taskDate = [
    "2022/07/02",
    "2022/07/07",
    "2022/07/14",
    "2022/07/24"
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YabeMa'),
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.more_vert),
                  title: Text(taskList[index]),
                  subtitle: Text(taskDate[index]),
                  trailing: Icon(Icons.delete),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              //ボタンが押されたときの挙動
              taskList.add('Google');
              print(taskList);
              setState(() {});
            },
            tooltip: 'Increment',
            child: const Icon(Icons.alarm_add),
          ),
          SizedBox(width: 180),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_task),
          ),
          SizedBox(width: 0),
        ],
      ),
    );
  }
}
