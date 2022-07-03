import 'package:benese_team5/view/insert_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'calender_page.dart';
import 'kadai_data_vm.dart';
import 'modal_page.dart';

class ListPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataListState = ref.watch(tempKadaiProvider);
    final dataList = ref.watch(tempKadaiProvider).dataList;
    final kadaiListController = ref.read(tempKadaiProvider.notifier);
    // final checkedList=useState([false,false,false,false,false]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('YabeMa'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          // final isChecked=useState(false);
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return ModalPage(
                          // day: focusingDay.value,
                          );
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: Checkbox(
                      value: dataListState.dataList[index].isDone,
                      onChanged: (value) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return AlertDialog(

                              title: Text("本当に終わった？"),
                              actions: [
                                FlatButton(
                                  child: Text("いいえ"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                    child: Text("はい"),
                                    onPressed: () {
                                      print('はい');
                                      // checkedList.value[index]=value!;
                                      // isChecked.value=value!;
                                      kadaiListController.updateIsDone(index);
                                      Navigator.pop(context);


                                    }),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    title: Text(dataList[index].kamoku),
                    subtitle: Text(dataList[index].content),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        kadaiListController.delete(index);
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "hero1",
            onPressed: () {},
            tooltip: 'Increment',
            child: const Icon(Icons.alarm_add),
          ),
          SizedBox(width: 100),
          FloatingActionButton(
            heroTag: "hero2",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CalenderPage(datalist: dataList);
                  },
                ),
              );
            },
            tooltip: 'カレンダー',
            child: const Icon(Icons.calendar_month),
          ),
          SizedBox(width: 100),
          FloatingActionButton(
            heroTag: "hero3",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return InsertDataPage();
                  },
                ),
              );
            },
            tooltip: '課題追加',
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
