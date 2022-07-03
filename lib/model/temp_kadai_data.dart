import 'package:freezed_annotation/freezed_annotation.dart';
part 'temp_kadai_data.freezed.dart';


@freezed
class TempKadaiData with _$TempKadaiData{
  const factory TempKadaiData({
    @Default('') String kamoku,
    @Default(null) DateTime? limitDay,
    @Default('') String content,
    @Default('') String sakuseisya,
    @Default(false) bool isDone,
  }) = _TempKadaiData;
}
@freezed
class KadaiDataList with _$KadaiDataList{
  const factory KadaiDataList({
    @Default([]) List<TempKadaiData> dataList,

  }) = _KadaiDataList;
}