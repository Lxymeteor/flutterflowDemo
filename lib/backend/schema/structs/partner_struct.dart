// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnerStruct extends BaseStruct {
  PartnerStruct({
    String? id,
    String? name,
    String? brief,
    String? introduce,
    String? headUrl,
    bool? isLike,
  })  : _id = id,
        _name = name,
        _brief = brief,
        _introduce = introduce,
        _headUrl = headUrl,
        _isLike = isLike;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "brief" field.
  String? _brief;
  String get brief => _brief ?? '';
  set brief(String? val) => _brief = val;

  bool hasBrief() => _brief != null;

  // "introduce" field.
  String? _introduce;
  String get introduce => _introduce ?? '';
  set introduce(String? val) => _introduce = val;

  bool hasIntroduce() => _introduce != null;

  // "headUrl" field.
  String? _headUrl;
  String get headUrl => _headUrl ?? '';
  set headUrl(String? val) => _headUrl = val;

  bool hasHeadUrl() => _headUrl != null;

  // "isLike" field.
  bool? _isLike;
  bool get isLike => _isLike ?? false;
  set isLike(bool? val) => _isLike = val;

  bool hasIsLike() => _isLike != null;

  static PartnerStruct fromMap(Map<String, dynamic> data) => PartnerStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        brief: data['brief'] as String?,
        introduce: data['introduce'] as String?,
        headUrl: data['headUrl'] as String?,
        isLike: data['isLike'] as bool?,
      );

  static PartnerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PartnerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'brief': _brief,
        'introduce': _introduce,
        'headUrl': _headUrl,
        'isLike': _isLike,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'brief': serializeParam(
          _brief,
          ParamType.String,
        ),
        'introduce': serializeParam(
          _introduce,
          ParamType.String,
        ),
        'headUrl': serializeParam(
          _headUrl,
          ParamType.String,
        ),
        'isLike': serializeParam(
          _isLike,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartnerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        brief: deserializeParam(
          data['brief'],
          ParamType.String,
          false,
        ),
        introduce: deserializeParam(
          data['introduce'],
          ParamType.String,
          false,
        ),
        headUrl: deserializeParam(
          data['headUrl'],
          ParamType.String,
          false,
        ),
        isLike: deserializeParam(
          data['isLike'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PartnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PartnerStruct &&
        id == other.id &&
        name == other.name &&
        brief == other.brief &&
        introduce == other.introduce &&
        headUrl == other.headUrl &&
        isLike == other.isLike;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, brief, introduce, headUrl, isLike]);
}

PartnerStruct createPartnerStruct({
  String? id,
  String? name,
  String? brief,
  String? introduce,
  String? headUrl,
  bool? isLike,
}) =>
    PartnerStruct(
      id: id,
      name: name,
      brief: brief,
      introduce: introduce,
      headUrl: headUrl,
      isLike: isLike,
    );
