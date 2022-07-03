import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';

import '../model/temp_kadai_data.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key,required this.datalist}) : super(key: key);

  // List<TempKadaiData>
  final datalist;

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  // Map<DateTime, List> _eventsList = {};

  DateTime _focused = DateTime.now();
  DateTime? _selected;

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  Map<DateTime, List> _eventsList = {};


  @override
  void initState() {
    super.initState();

    _selected = _focused;
    // _eventsList = {
    //   DateTime.now().subtract(Duration(days: 1)): ['ハッカソン'],
    //   DateTime.now().add(Duration(days: 11)): ['今から11日後'],
    //   DateTime.now(): ['ハッカソン'],
    // };
    for (var item in widget.datalist) {
      DateTime date = DateTime(
          item.limitDay!.year, item.limitDay!.month, item.limitDay!.day);
      if (_eventsList.containsKey(date)) {
        _eventsList[date]!.add(item);
      } else {
        _eventsList[date] = [item];
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List getEvent(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("カレンダー表示"),
        ),
        body: Column(children: [
          TableCalendar(
            firstDay: DateTime.utc(2022, 4, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            eventLoader: getEvent, //追記
            selectedDayPredicate: (day) {
              return isSameDay(_selected, day);
            },
            onDaySelected: (selected, focused) {
              if (!isSameDay(_selected, selected)) {
                setState(() {
                  _selected = selected;
                  _focused = focused;
                });
              }
            },
            focusedDay: _focused,
          ),
          //--追記--------------------------------------------------------------
          ListView(
            shrinkWrap: true,
            children: getEvent(_selected!)
                .map((event) => ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Text("科目名:  "),
                      Text(event.kamoku.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Text("詳細:  "),
                      Text(event.content.toString()),
                    ],
                  ),
                ],
              ),
            ))
                .toList(),
          )
          //--------------------------------------------------------------------
        ]));
  }
}
