// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayGearsStruct extends BaseStruct {
  PayGearsStruct({
    int? id,
    String? gemCount,
    String? gemValue,
    String? gemId,
  })  : _id = id,
        _gemCount = gemCount,
        _gemValue = gemValue,
        _gemId = gemId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "gemCount" field.
  String? _gemCount;
  String get gemCount => _gemCount ?? '';
  set gemCount(String? val) => _gemCount = val;

  bool hasGemCount() => _gemCount != null;

  // "gemValue" field.
  String? _gemValue;
  String get gemValue => _gemValue ?? '';
  set gemValue(String? val) => _gemValue = val;

  bool hasGemValue() => _gemValue != null;

  // "gemId" field.
  String? _gemId;
  String get gemId => _gemId ?? '';
  set gemId(String? val) => _gemId = val;

  bool hasGemId() => _gemId != null;

  static PayGearsStruct fromMap(Map<String, dynamic> data) => PayGearsStruct(
        id: castToType<int>(data['id']),
        gemCount: data['gemCount'] as String?,
        gemValue: data['gemValue'] as String?,
        gemId: data['gemId'] as String?,
      );

  static PayGearsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PayGearsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'gemCount': _gemCount,
        'gemValue': _gemValue,
        'gemId': _gemId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'gemCount': serializeParam(
          _gemCount,
          ParamType.String,
        ),
        'gemValue': serializeParam(
          _gemValue,
          ParamType.String,
        ),
        'gemId': serializeParam(
          _gemId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PayGearsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayGearsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        gemCount: deserializeParam(
          data['gemCount'],
          ParamType.String,
          false,
        ),
        gemValue: deserializeParam(
          data['gemValue'],
          ParamType.String,
          false,
        ),
        gemId: deserializeParam(
          data['gemId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PayGearsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayGearsStruct &&
        id == other.id &&
        gemCount == other.gemCount &&
        gemValue == other.gemValue &&
        gemId == other.gemId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, gemCount, gemValue, gemId]);
}

PayGearsStruct createPayGearsStruct({
  int? id,
  String? gemCount,
  String? gemValue,
  String? gemId,
}) =>
    PayGearsStruct(
      id: id,
      gemCount: gemCount,
      gemValue: gemValue,
      gemId: gemId,
    );
