// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_kadai_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TempKadaiData {
  String get kamoku => throw _privateConstructorUsedError;
  DateTime? get startDay => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempKadaiDataCopyWith<TempKadaiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempKadaiDataCopyWith<$Res> {
  factory $TempKadaiDataCopyWith(
          TempKadaiData value, $Res Function(TempKadaiData) then) =
      _$TempKadaiDataCopyWithImpl<$Res>;
  $Res call({String kamoku, DateTime? startDay, String content});
}

/// @nodoc
class _$TempKadaiDataCopyWithImpl<$Res>
    implements $TempKadaiDataCopyWith<$Res> {
  _$TempKadaiDataCopyWithImpl(this._value, this._then);

  final TempKadaiData _value;
  // ignore: unused_field
  final $Res Function(TempKadaiData) _then;

  @override
  $Res call({
    Object? kamoku = freezed,
    Object? startDay = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      kamoku: kamoku == freezed
          ? _value.kamoku
          : kamoku // ignore: cast_nullable_to_non_nullable
              as String,
      startDay: startDay == freezed
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TempKadaiDataCopyWith<$Res>
    implements $TempKadaiDataCopyWith<$Res> {
  factory _$$_TempKadaiDataCopyWith(
          _$_TempKadaiData value, $Res Function(_$_TempKadaiData) then) =
      __$$_TempKadaiDataCopyWithImpl<$Res>;
  @override
  $Res call({String kamoku, DateTime? startDay, String content});
}

/// @nodoc
class __$$_TempKadaiDataCopyWithImpl<$Res>
    extends _$TempKadaiDataCopyWithImpl<$Res>
    implements _$$_TempKadaiDataCopyWith<$Res> {
  __$$_TempKadaiDataCopyWithImpl(
      _$_TempKadaiData _value, $Res Function(_$_TempKadaiData) _then)
      : super(_value, (v) => _then(v as _$_TempKadaiData));

  @override
  _$_TempKadaiData get _value => super._value as _$_TempKadaiData;

  @override
  $Res call({
    Object? kamoku = freezed,
    Object? startDay = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_TempKadaiData(
      kamoku: kamoku == freezed
          ? _value.kamoku
          : kamoku // ignore: cast_nullable_to_non_nullable
              as String,
      startDay: startDay == freezed
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TempKadaiData implements _TempKadaiData {
  const _$_TempKadaiData(
      {this.kamoku = '', this.startDay = null, this.content = ''});

  @override
  @JsonKey()
  final String kamoku;
  @override
  @JsonKey()
  final DateTime? startDay;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'TempKadaiData(kamoku: $kamoku, startDay: $startDay, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempKadaiData &&
            const DeepCollectionEquality().equals(other.kamoku, kamoku) &&
            const DeepCollectionEquality().equals(other.startDay, startDay) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kamoku),
      const DeepCollectionEquality().hash(startDay),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_TempKadaiDataCopyWith<_$_TempKadaiData> get copyWith =>
      __$$_TempKadaiDataCopyWithImpl<_$_TempKadaiData>(this, _$identity);
}

abstract class _TempKadaiData implements TempKadaiData {
  const factory _TempKadaiData(
      {final String kamoku,
      final DateTime? startDay,
      final String content}) = _$_TempKadaiData;

  @override
  String get kamoku => throw _privateConstructorUsedError;
  @override
  DateTime? get startDay => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TempKadaiDataCopyWith<_$_TempKadaiData> get copyWith =>
      throw _privateConstructorUsedError;
}
