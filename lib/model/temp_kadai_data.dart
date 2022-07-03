import 'package:freezed_annotation/freezed_annotation.dart';
part 'temp_kadai_data.freezed.dart';




@freezed
class TempKadaiData with _$TempKadaiData{
  const factory TempKadaiData({
    @Default('') String kamoku,
    @Default(null) DateTime? startDay,
    @Default('') String content,
  }) = _TempKadaiData;
}