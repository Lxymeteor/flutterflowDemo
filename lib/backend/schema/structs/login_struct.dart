// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginStruct extends BaseStruct {
  LoginStruct({
    int? id,
    String? name,
    String? email,
    DateTime? birthday,
  })  : _id = id,
        _name = name,
        _email = email,
        _birthday = birthday;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  set birthday(DateTime? val) => _birthday = val;

  bool hasBirthday() => _birthday != null;

  static LoginStruct fromMap(Map<String, dynamic> data) => LoginStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        birthday: data['birthday'] as DateTime?,
      );

  static LoginStruct? maybeFromMap(dynamic data) =>
      data is Map ? LoginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'birthday': _birthday,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'birthday': serializeParam(
          _birthday,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static LoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        birthday: deserializeParam(
          data['birthday'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'LoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        birthday == other.birthday;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, email, birthday]);
}

LoginStruct createLoginStruct({
  int? id,
  String? name,
  String? email,
  DateTime? birthday,
}) =>
    LoginStruct(
      id: id,
      name: name,
      email: email,
      birthday: birthday,
    );
