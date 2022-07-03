import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/temp_kadai_data.dart';

final tempKadaiProvider =
    StateNotifierProvider<KadaiListController, KadaiDataList>((ref) {
  return KadaiListController();
});

class KadaiListController extends StateNotifier<KadaiDataList> {
  KadaiListController() : super(KadaiDataList());

  void add(TempKadaiData value) {
    state = state.copyWith(
        dataList:[...state.dataList,value]
    );
  }

  void delete(int index) {
    state = state.copyWith(
        dataList:[...state.dataList.sublist(0,index),...state.dataList.sublist(index+1,state.dataList.length)]
    );
  }

  void updateIsDone(int index){
    state=state.copyWith(dataList:[...state.dataList.sublist(0,index),
      TempKadaiData(
        kamoku: state.dataList[index].kamoku,
        limitDay: state.dataList[index].limitDay,
        content: state.dataList[index].content,
        isDone: !state.dataList[index].isDone,
      ),
      ...state.dataList.sublist(index+1,state.dataList.length)]);
  }
  //
  // void updateOnly({String? title, bool? isAllDay, DateTime? startDay,
  //     DateTime? endDay, String? comment}) {
  //   state = state.copyWith(
  //       title: title?? state.title,
  //       isAllDay: isAllDay?? state.isAllDay,
  //       startDay: startDay??state.startDay,
  //       endDay: endDay??state.endDay,
  //       comment: comment??state.comment);
  // }

  // void updateTitle(String title) {
  //   state = state.copyWith(title: title);
  // }
  //
  // void updateIsAllDay(bool isAllDay) {
  //   state = state.copyWith(isAllDay: isAllDay);
  // }
  //
  // void updateStartDate(DateTime startDay) {
  //   state = state.copyWith(startDay: startDay);
  // }
  //
  // void updateEndDate(DateTime endDay) {
  //   state = state.copyWith(endDay: endDay);
  // }
  //
  // void updateComment(String comment) {
  //   state = state.copyWith(comment: comment);
  // }
}
