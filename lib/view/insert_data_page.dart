import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class InsertDataPage extends StatelessWidget {
  const InsertDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("課題の追加")
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "グループ名",
                icon: Icon(Icons.group_add),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("期限"),
                TextButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) {
                          // DateTime tempDay=startDay.value;
                          // DateTime tempDay = tempTodoState.startDay!;
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xff999999), width: 0.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CupertinoButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 5.0),
                                      child: const Text("キャンセル"),
                                    ),
                                    CupertinoButton(
                                      onPressed: () {


                                      },
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 5.0),
                                      child: const Text("追加"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 3,
                                padding: const EdgeInsets.only(top: 6.0),
                                color: CupertinoColors.white,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                      color: CupertinoColors.black,
                                      fontSize: 22.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: SafeArea(
                                      top: false,
                                      child: CupertinoDatePicker(
                                        use24hFormat: true,
                                        // minuteInterval: 15,
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (value) {
                                          // tempDay = value;
                                          // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                        },
                                        mode:
                                        // tempTodoState.isAllDay ?
                                        CupertinoDatePickerMode.date
                                            // : CupertinoDatePickerMode.dateAndTime,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Text(
                    "",
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "グループ名",
                icon: Icon(Icons.group_add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
