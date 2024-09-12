// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllUsersStruct extends BaseStruct {
  AllUsersStruct({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<UserStruct>? data,
  })  : _page = page,
        _perPage = perPage,
        _total = total,
        _totalPages = totalPages,
        _data = data;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "per_page" field.
  int? _perPage;
  int get perPage => _perPage ?? 0;
  set perPage(int? val) => _perPage = val;

  void incrementPerPage(int amount) => perPage = perPage + amount;

  bool hasPerPage() => _perPage != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "total_pages" field.
  int? _totalPages;
  int get totalPages => _totalPages ?? 0;
  set totalPages(int? val) => _totalPages = val;

  void incrementTotalPages(int amount) => totalPages = totalPages + amount;

  bool hasTotalPages() => _totalPages != null;

  // "data" field.
  List<UserStruct>? _data;
  List<UserStruct> get data => _data ?? const [];
  set data(List<UserStruct>? val) => _data = val;

  void updateData(Function(List<UserStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static AllUsersStruct fromMap(Map<String, dynamic> data) => AllUsersStruct(
        page: castToType<int>(data['page']),
        perPage: castToType<int>(data['per_page']),
        total: castToType<int>(data['total']),
        totalPages: castToType<int>(data['total_pages']),
        data: getStructList(
          data['data'],
          UserStruct.fromMap,
        ),
      );

  static AllUsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? AllUsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'page': _page,
        'per_page': _perPage,
        'total': _total,
        'total_pages': _totalPages,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'per_page': serializeParam(
          _perPage,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'total_pages': serializeParam(
          _totalPages,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AllUsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllUsersStruct(
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        perPage: deserializeParam(
          data['per_page'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        totalPages: deserializeParam(
          data['total_pages'],
          ParamType.int,
          false,
        ),
        data: deserializeStructParam<UserStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllUsersStruct &&
        page == other.page &&
        perPage == other.perPage &&
        total == other.total &&
        totalPages == other.totalPages &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([page, perPage, total, totalPages, data]);
}

AllUsersStruct createAllUsersStruct({
  int? page,
  int? perPage,
  int? total,
  int? totalPages,
}) =>
    AllUsersStruct(
      page: page,
      perPage: perPage,
      total: total,
      totalPages: totalPages,
    );
