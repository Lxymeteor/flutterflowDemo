// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayGearsStruct extends BaseStruct {
  PayGearsStruct({
    int? id,
    double? payCount,
    double? getCount,
    int? chooseState,
    int? state,
  })  : _id = id,
        _payCount = payCount,
        _getCount = getCount,
        _chooseState = chooseState,
        _state = state;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "payCount" field.
  double? _payCount;
  double get payCount => _payCount ?? 0.0;
  set payCount(double? val) => _payCount = val;

  void incrementPayCount(double amount) => payCount = payCount + amount;

  bool hasPayCount() => _payCount != null;

  // "getCount" field.
  double? _getCount;
  double get getCount => _getCount ?? 0.0;
  set getCount(double? val) => _getCount = val;

  void incrementGetCount(double amount) => getCount = getCount + amount;

  bool hasGetCount() => _getCount != null;

  // "chooseState" field.
  int? _chooseState;
  int get chooseState => _chooseState ?? 0;
  set chooseState(int? val) => _chooseState = val;

  void incrementChooseState(int amount) => chooseState = chooseState + amount;

  bool hasChooseState() => _chooseState != null;

  // "state" field.
  int? _state;
  int get state => _state ?? 0;
  set state(int? val) => _state = val;

  void incrementState(int amount) => state = state + amount;

  bool hasState() => _state != null;

  static PayGearsStruct fromMap(Map<String, dynamic> data) => PayGearsStruct(
        id: castToType<int>(data['id']),
        payCount: castToType<double>(data['payCount']),
        getCount: castToType<double>(data['getCount']),
        chooseState: castToType<int>(data['chooseState']),
        state: castToType<int>(data['state']),
      );

  static PayGearsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PayGearsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'payCount': _payCount,
        'getCount': _getCount,
        'chooseState': _chooseState,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'payCount': serializeParam(
          _payCount,
          ParamType.double,
        ),
        'getCount': serializeParam(
          _getCount,
          ParamType.double,
        ),
        'chooseState': serializeParam(
          _chooseState,
          ParamType.int,
        ),
        'state': serializeParam(
          _state,
          ParamType.int,
        ),
      }.withoutNulls;

  static PayGearsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayGearsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        payCount: deserializeParam(
          data['payCount'],
          ParamType.double,
          false,
        ),
        getCount: deserializeParam(
          data['getCount'],
          ParamType.double,
          false,
        ),
        chooseState: deserializeParam(
          data['chooseState'],
          ParamType.int,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PayGearsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayGearsStruct &&
        id == other.id &&
        payCount == other.payCount &&
        getCount == other.getCount &&
        chooseState == other.chooseState &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, payCount, getCount, chooseState, state]);
}

PayGearsStruct createPayGearsStruct({
  int? id,
  double? payCount,
  double? getCount,
  int? chooseState,
  int? state,
}) =>
    PayGearsStruct(
      id: id,
      payCount: payCount,
      getCount: getCount,
      chooseState: chooseState,
      state: state,
    );
