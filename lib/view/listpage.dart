import 'package:benese_team5/view/insert_data_page.dart';
import 'package:flutter/material.dart';



class ListPage extends StatefulWidget {
  const ListPage({Key? key, }) : super(key: key);


  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return InsertDataPage();
                  },
                ),
              );
            },
            child: const Icon(Icons.add_task),
          ),
          SizedBox(width: 0),
        ],
      ),
    );
  }
}





// class ListPage extends StatelessWidget {
//   const ListPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Card(
//                   margin:
//                       EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                   child: ListTile(
//                     title: Text(
//                       'abc',
//                       style: TextStyle(
//                         fontFamily: 'SyneMono',
//                         fontSize: 20.0,
//                         color: Colors.teal.shade900,
//                       ),
//                     ),
//                   )),
//               Card(
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                 child: ListTile(
//                   title: Text(
//                     'kamoku',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.teal.shade900,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) {
//                   return InsertDataPage();
//                 },
//               ),
//             );
//           },
//         ),
//
//     );
//   }
// }
