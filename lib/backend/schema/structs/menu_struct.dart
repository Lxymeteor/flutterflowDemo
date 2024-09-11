// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuStruct extends BaseStruct {
  MenuStruct({
    int? menuId,
    String? menuName,
    int? menuState,
    String? menuRoute,
  })  : _menuId = menuId,
        _menuName = menuName,
        _menuState = menuState,
        _menuRoute = menuRoute;

  // "menuId" field.
  int? _menuId;
  int get menuId => _menuId ?? 0;
  set menuId(int? val) => _menuId = val;

  void incrementMenuId(int amount) => menuId = menuId + amount;

  bool hasMenuId() => _menuId != null;

  // "menuName" field.
  String? _menuName;
  String get menuName => _menuName ?? '';
  set menuName(String? val) => _menuName = val;

  bool hasMenuName() => _menuName != null;

  // "menuState" field.
  int? _menuState;
  int get menuState => _menuState ?? 0;
  set menuState(int? val) => _menuState = val;

  void incrementMenuState(int amount) => menuState = menuState + amount;

  bool hasMenuState() => _menuState != null;

  // "menuRoute" field.
  String? _menuRoute;
  String get menuRoute => _menuRoute ?? '';
  set menuRoute(String? val) => _menuRoute = val;

  bool hasMenuRoute() => _menuRoute != null;

  static MenuStruct fromMap(Map<String, dynamic> data) => MenuStruct(
        menuId: castToType<int>(data['menuId']),
        menuName: data['menuName'] as String?,
        menuState: castToType<int>(data['menuState']),
        menuRoute: data['menuRoute'] as String?,
      );

  static MenuStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'menuId': _menuId,
        'menuName': _menuName,
        'menuState': _menuState,
        'menuRoute': _menuRoute,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuId': serializeParam(
          _menuId,
          ParamType.int,
        ),
        'menuName': serializeParam(
          _menuName,
          ParamType.String,
        ),
        'menuState': serializeParam(
          _menuState,
          ParamType.int,
        ),
        'menuRoute': serializeParam(
          _menuRoute,
          ParamType.String,
        ),
      }.withoutNulls;

  static MenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuStruct(
        menuId: deserializeParam(
          data['menuId'],
          ParamType.int,
          false,
        ),
        menuName: deserializeParam(
          data['menuName'],
          ParamType.String,
          false,
        ),
        menuState: deserializeParam(
          data['menuState'],
          ParamType.int,
          false,
        ),
        menuRoute: deserializeParam(
          data['menuRoute'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuStruct &&
        menuId == other.menuId &&
        menuName == other.menuName &&
        menuState == other.menuState &&
        menuRoute == other.menuRoute;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([menuId, menuName, menuState, menuRoute]);
}

MenuStruct createMenuStruct({
  int? menuId,
  String? menuName,
  int? menuState,
  String? menuRoute,
}) =>
    MenuStruct(
      menuId: menuId,
      menuName: menuName,
      menuState: menuState,
      menuRoute: menuRoute,
    );
