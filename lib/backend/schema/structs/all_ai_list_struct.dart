// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllAiListStruct extends BaseStruct {
  AllAiListStruct({
    int? total,
    List<AiStruct>? rows,
    int? code,
  })  : _total = total,
        _rows = rows,
        _code = code;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "rows" field.
  List<AiStruct>? _rows;
  List<AiStruct> get rows => _rows ?? const [];
  set rows(List<AiStruct>? val) => _rows = val;

  void updateRows(Function(List<AiStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  static AllAiListStruct fromMap(Map<String, dynamic> data) => AllAiListStruct(
        total: castToType<int>(data['total']),
        rows: getStructList(
          data['rows'],
          AiStruct.fromMap,
        ),
        code: castToType<int>(data['code']),
      );

  static AllAiListStruct? maybeFromMap(dynamic data) => data is Map
      ? AllAiListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'rows': _rows?.map((e) => e.toMap()).toList(),
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
      }.withoutNulls;

  static AllAiListStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllAiListStruct(
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        rows: deserializeStructParam<AiStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: AiStruct.fromSerializableMap,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AllAiListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllAiListStruct &&
        total == other.total &&
        listEquality.equals(rows, other.rows) &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([total, rows, code]);
}

AllAiListStruct createAllAiListStruct({
  int? total,
  int? code,
}) =>
    AllAiListStruct(
      total: total,
      code: code,
    );
