// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnerStruct extends BaseStruct {
  PartnerStruct({
    int? id,
    String? name,
    String? introduce,
    String? marks,
    bool? isLike,
    String? avatar,
  })  : _id = id,
        _name = name,
        _introduce = introduce,
        _marks = marks,
        _isLike = isLike,
        _avatar = avatar;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "introduce" field.
  String? _introduce;
  String get introduce => _introduce ?? '';
  set introduce(String? val) => _introduce = val;

  bool hasIntroduce() => _introduce != null;

  // "marks" field.
  String? _marks;
  String get marks => _marks ?? '';
  set marks(String? val) => _marks = val;

  bool hasMarks() => _marks != null;

  // "isLike" field.
  bool? _isLike;
  bool get isLike => _isLike ?? false;
  set isLike(bool? val) => _isLike = val;

  bool hasIsLike() => _isLike != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  static PartnerStruct fromMap(Map<String, dynamic> data) => PartnerStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        introduce: data['introduce'] as String?,
        marks: data['marks'] as String?,
        isLike: data['isLike'] as bool?,
        avatar: data['avatar'] as String?,
      );

  static PartnerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PartnerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'introduce': _introduce,
        'marks': _marks,
        'isLike': _isLike,
        'avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'introduce': serializeParam(
          _introduce,
          ParamType.String,
        ),
        'marks': serializeParam(
          _marks,
          ParamType.String,
        ),
        'isLike': serializeParam(
          _isLike,
          ParamType.bool,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
      }.withoutNulls;

  static PartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartnerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        introduce: deserializeParam(
          data['introduce'],
          ParamType.String,
          false,
        ),
        marks: deserializeParam(
          data['marks'],
          ParamType.String,
          false,
        ),
        isLike: deserializeParam(
          data['isLike'],
          ParamType.bool,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
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
        introduce == other.introduce &&
        marks == other.marks &&
        isLike == other.isLike &&
        avatar == other.avatar;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, introduce, marks, isLike, avatar]);
}

PartnerStruct createPartnerStruct({
  int? id,
  String? name,
  String? introduce,
  String? marks,
  bool? isLike,
  String? avatar,
}) =>
    PartnerStruct(
      id: id,
      name: name,
      introduce: introduce,
      marks: marks,
      isLike: isLike,
      avatar: avatar,
    );
