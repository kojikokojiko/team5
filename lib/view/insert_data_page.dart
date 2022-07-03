import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:intl/intl.dart';

import 'listpage.dart';


class InsertDataPage extends HookConsumerWidget {
  const InsertDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final kamoku=useState("");
    final limitTime=useState(DateTime.now());
    final content=useState("");


    return Scaffold(
      appBar: AppBar(
        title: const Text("課題の追加")
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "科目名",
                icon: Icon(Icons.subject),
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
                          DateTime tempDay =limitTime.value;

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
                                        limitTime.value=tempDay;
                                        Navigator.pop(context);


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
                                        initialDateTime: limitTime.value,
                                        onDateTimeChanged: (value) {
                                          // tempDay = value;
                                          // ref.read(scheduleEndTimeProvider.state).update((state) => value);
                                          // limitTime.value=value;
                                          tempDay=value;
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
                    DateFormat("yyyy-MM-dd").format(limitTime.value),

                    // "${limitTime.value}",
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            TextFormField(
              maxLines: 6,
              minLines: 6,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: "詳細入力",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(
                    width: 1,
                    // color: Colors.green,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
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
        ),
      ),
    );
  }
}
