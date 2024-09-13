// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatListStruct extends BaseStruct {
  ChatListStruct({
    int? id,
    int? sendUserId,
    int? receiveUserId,
    String? content,
    DateTime? createTime,
    DateTime? sendTime,
  })  : _id = id,
        _sendUserId = sendUserId,
        _receiveUserId = receiveUserId,
        _content = content,
        _createTime = createTime,
        _sendTime = sendTime;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "sendUserId" field.
  int? _sendUserId;
  int get sendUserId => _sendUserId ?? 0;
  set sendUserId(int? val) => _sendUserId = val;

  void incrementSendUserId(int amount) => sendUserId = sendUserId + amount;

  bool hasSendUserId() => _sendUserId != null;

  // "receiveUserId" field.
  int? _receiveUserId;
  int get receiveUserId => _receiveUserId ?? 0;
  set receiveUserId(int? val) => _receiveUserId = val;

  void incrementReceiveUserId(int amount) =>
      receiveUserId = receiveUserId + amount;

  bool hasReceiveUserId() => _receiveUserId != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  set createTime(DateTime? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "sendTime" field.
  DateTime? _sendTime;
  DateTime? get sendTime => _sendTime;
  set sendTime(DateTime? val) => _sendTime = val;

  bool hasSendTime() => _sendTime != null;

  static ChatListStruct fromMap(Map<String, dynamic> data) => ChatListStruct(
        id: castToType<int>(data['id']),
        sendUserId: castToType<int>(data['sendUserId']),
        receiveUserId: castToType<int>(data['receiveUserId']),
        content: data['content'] as String?,
        createTime: data['createTime'] as DateTime?,
        sendTime: data['sendTime'] as DateTime?,
      );

  static ChatListStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'sendUserId': _sendUserId,
        'receiveUserId': _receiveUserId,
        'content': _content,
        'createTime': _createTime,
        'sendTime': _sendTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'sendUserId': serializeParam(
          _sendUserId,
          ParamType.int,
        ),
        'receiveUserId': serializeParam(
          _receiveUserId,
          ParamType.int,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'createTime': serializeParam(
          _createTime,
          ParamType.DateTime,
        ),
        'sendTime': serializeParam(
          _sendTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ChatListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatListStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        sendUserId: deserializeParam(
          data['sendUserId'],
          ParamType.int,
          false,
        ),
        receiveUserId: deserializeParam(
          data['receiveUserId'],
          ParamType.int,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['createTime'],
          ParamType.DateTime,
          false,
        ),
        sendTime: deserializeParam(
          data['sendTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ChatListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatListStruct &&
        id == other.id &&
        sendUserId == other.sendUserId &&
        receiveUserId == other.receiveUserId &&
        content == other.content &&
        createTime == other.createTime &&
        sendTime == other.sendTime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, sendUserId, receiveUserId, content, createTime, sendTime]);
}

ChatListStruct createChatListStruct({
  int? id,
  int? sendUserId,
  int? receiveUserId,
  String? content,
  DateTime? createTime,
  DateTime? sendTime,
}) =>
    ChatListStruct(
      id: id,
      sendUserId: sendUserId,
      receiveUserId: receiveUserId,
      content: content,
      createTime: createTime,
      sendTime: sendTime,
    );
