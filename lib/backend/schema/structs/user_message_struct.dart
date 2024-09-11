// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMessageStruct extends BaseStruct {
  UserMessageStruct({
    int? id,
    String? avatar,
    String? title,
    String? content,
    int? state,
    DateTime? crateTime,
  })  : _id = id,
        _avatar = avatar,
        _title = title,
        _content = content,
        _state = state,
        _crateTime = crateTime;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "state" field.
  int? _state;
  int get state => _state ?? 0;
  set state(int? val) => _state = val;

  void incrementState(int amount) => state = state + amount;

  bool hasState() => _state != null;

  // "crateTime" field.
  DateTime? _crateTime;
  DateTime? get crateTime => _crateTime;
  set crateTime(DateTime? val) => _crateTime = val;

  bool hasCrateTime() => _crateTime != null;

  static UserMessageStruct fromMap(Map<String, dynamic> data) =>
      UserMessageStruct(
        id: castToType<int>(data['id']),
        avatar: data['avatar'] as String?,
        title: data['title'] as String?,
        content: data['content'] as String?,
        state: castToType<int>(data['state']),
        crateTime: data['crateTime'] as DateTime?,
      );

  static UserMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? UserMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'avatar': _avatar,
        'title': _title,
        'content': _content,
        'state': _state,
        'crateTime': _crateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.int,
        ),
        'crateTime': serializeParam(
          _crateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UserMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMessageStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.int,
          false,
        ),
        crateTime: deserializeParam(
          data['crateTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UserMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMessageStruct &&
        id == other.id &&
        avatar == other.avatar &&
        title == other.title &&
        content == other.content &&
        state == other.state &&
        crateTime == other.crateTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, avatar, title, content, state, crateTime]);
}

UserMessageStruct createUserMessageStruct({
  int? id,
  String? avatar,
  String? title,
  String? content,
  int? state,
  DateTime? crateTime,
}) =>
    UserMessageStruct(
      id: id,
      avatar: avatar,
      title: title,
      content: content,
      state: state,
      crateTime: crateTime,
    );
