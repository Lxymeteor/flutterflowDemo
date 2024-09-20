// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AiStruct extends BaseStruct {
  AiStruct({
    String? id,
    String? headUrl,
    String? aiName,
    String? aiBrief,
    String? aiDetails,
    String? createType,
    int? systemType,
    int? aiType,
  })  : _id = id,
        _headUrl = headUrl,
        _aiName = aiName,
        _aiBrief = aiBrief,
        _aiDetails = aiDetails,
        _createType = createType,
        _systemType = systemType,
        _aiType = aiType;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "headUrl" field.
  String? _headUrl;
  String get headUrl => _headUrl ?? '';
  set headUrl(String? val) => _headUrl = val;

  bool hasHeadUrl() => _headUrl != null;

  // "aiName" field.
  String? _aiName;
  String get aiName => _aiName ?? '';
  set aiName(String? val) => _aiName = val;

  bool hasAiName() => _aiName != null;

  // "aiBrief" field.
  String? _aiBrief;
  String get aiBrief => _aiBrief ?? '';
  set aiBrief(String? val) => _aiBrief = val;

  bool hasAiBrief() => _aiBrief != null;

  // "aiDetails" field.
  String? _aiDetails;
  String get aiDetails => _aiDetails ?? '';
  set aiDetails(String? val) => _aiDetails = val;

  bool hasAiDetails() => _aiDetails != null;

  // "createType" field.
  String? _createType;
  String get createType => _createType ?? '';
  set createType(String? val) => _createType = val;

  bool hasCreateType() => _createType != null;

  // "systemType" field.
  int? _systemType;
  int get systemType => _systemType ?? 0;
  set systemType(int? val) => _systemType = val;

  void incrementSystemType(int amount) => systemType = systemType + amount;

  bool hasSystemType() => _systemType != null;

  // "aiType" field.
  int? _aiType;
  int get aiType => _aiType ?? 0;
  set aiType(int? val) => _aiType = val;

  void incrementAiType(int amount) => aiType = aiType + amount;

  bool hasAiType() => _aiType != null;

  static AiStruct fromMap(Map<String, dynamic> data) => AiStruct(
        id: data['id'] as String?,
        headUrl: data['headUrl'] as String?,
        aiName: data['aiName'] as String?,
        aiBrief: data['aiBrief'] as String?,
        aiDetails: data['aiDetails'] as String?,
        createType: data['createType'] as String?,
        systemType: castToType<int>(data['systemType']),
        aiType: castToType<int>(data['aiType']),
      );

  static AiStruct? maybeFromMap(dynamic data) =>
      data is Map ? AiStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'headUrl': _headUrl,
        'aiName': _aiName,
        'aiBrief': _aiBrief,
        'aiDetails': _aiDetails,
        'createType': _createType,
        'systemType': _systemType,
        'aiType': _aiType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'headUrl': serializeParam(
          _headUrl,
          ParamType.String,
        ),
        'aiName': serializeParam(
          _aiName,
          ParamType.String,
        ),
        'aiBrief': serializeParam(
          _aiBrief,
          ParamType.String,
        ),
        'aiDetails': serializeParam(
          _aiDetails,
          ParamType.String,
        ),
        'createType': serializeParam(
          _createType,
          ParamType.String,
        ),
        'systemType': serializeParam(
          _systemType,
          ParamType.int,
        ),
        'aiType': serializeParam(
          _aiType,
          ParamType.int,
        ),
      }.withoutNulls;

  static AiStruct fromSerializableMap(Map<String, dynamic> data) => AiStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        headUrl: deserializeParam(
          data['headUrl'],
          ParamType.String,
          false,
        ),
        aiName: deserializeParam(
          data['aiName'],
          ParamType.String,
          false,
        ),
        aiBrief: deserializeParam(
          data['aiBrief'],
          ParamType.String,
          false,
        ),
        aiDetails: deserializeParam(
          data['aiDetails'],
          ParamType.String,
          false,
        ),
        createType: deserializeParam(
          data['createType'],
          ParamType.String,
          false,
        ),
        systemType: deserializeParam(
          data['systemType'],
          ParamType.int,
          false,
        ),
        aiType: deserializeParam(
          data['aiType'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AiStruct &&
        id == other.id &&
        headUrl == other.headUrl &&
        aiName == other.aiName &&
        aiBrief == other.aiBrief &&
        aiDetails == other.aiDetails &&
        createType == other.createType &&
        systemType == other.systemType &&
        aiType == other.aiType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        headUrl,
        aiName,
        aiBrief,
        aiDetails,
        createType,
        systemType,
        aiType
      ]);
}

AiStruct createAiStruct({
  String? id,
  String? headUrl,
  String? aiName,
  String? aiBrief,
  String? aiDetails,
  String? createType,
  int? systemType,
  int? aiType,
}) =>
    AiStruct(
      id: id,
      headUrl: headUrl,
      aiName: aiName,
      aiBrief: aiBrief,
      aiDetails: aiDetails,
      createType: createType,
      systemType: systemType,
      aiType: aiType,
    );
