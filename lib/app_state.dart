import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _payGearsList = prefs
              .getStringList('ff_payGearsList')
              ?.map((x) {
                try {
                  return PayGearsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _payGearsList;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_User')) {
        try {
          final serializedData = prefs.getString('ff_User') ?? '{}';
          _User = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _partnerList = prefs
              .getStringList('ff_partnerList')
              ?.map((x) {
                try {
                  return PartnerStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _partnerList;
    });
    _safeInit(() {
      _likeList = prefs
              .getStringList('ff_likeList')
              ?.map((x) {
                try {
                  return AiStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _likeList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<MenuStruct> _menuList = [
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"menuId\":\"1\",\"menuName\":\"Get gems\",\"menuState\":\"1\",\"menuRoute\":\"\"}')),
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"menuId\":\"2\",\"menuName\":\"Privacy Policy\",\"menuState\":\"1\",\"menuRoute\":\"\"}')),
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"menuId\":\"3\",\"menuName\":\"User Terms\",\"menuState\":\"1\",\"menuRoute\":\"\"}')),
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"menuId\":\"4\",\"menuName\":\"About us\",\"menuState\":\"1\",\"menuRoute\":\"\"}'))
  ];
  List<MenuStruct> get menuList => _menuList;
  set menuList(List<MenuStruct> value) {
    _menuList = value;
  }

  void addToMenuList(MenuStruct value) {
    menuList.add(value);
  }

  void removeFromMenuList(MenuStruct value) {
    menuList.remove(value);
  }

  void removeAtIndexFromMenuList(int index) {
    menuList.removeAt(index);
  }

  void updateMenuListAtIndex(
    int index,
    MenuStruct Function(MenuStruct) updateFn,
  ) {
    menuList[index] = updateFn(_menuList[index]);
  }

  void insertAtIndexInMenuList(int index, MenuStruct value) {
    menuList.insert(index, value);
  }

  List<PayGearsStruct> _payGearsList = [
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"gemCount\":\"400\",\"gemValue\":\"0.99\",\"gemId\":\"locetmlswzgmkgvi\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"gemCount\":\"800\",\"gemValue\":\"1.99\",\"gemId\":\"jarobzefpihzbzbu\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"gemCount\":\"2450\",\"gemValue\":\"4.99\",\"gemId\":\"wkgznhpjcravcdxy\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"gemCount\":\"4900\",\"gemValue\":\"9.99\",\"gemId\":\"iuafyeijqqhkmudy\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"gemCount\":\"9800\",\"gemValue\":\"19.99\",\"gemId\":\"qedxteshovqonsgq\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"gemCount\":\"24500\",\"gemValue\":\"49.99\",\"gemId\":\"cckssswmtlrrnrpb\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"gemCount\":\"49000\",\"gemValue\":\"99.99\",\"gemId\":\"hrmlrvzwtzzoivbz\"}'))
  ];
  List<PayGearsStruct> get payGearsList => _payGearsList;
  set payGearsList(List<PayGearsStruct> value) {
    _payGearsList = value;
    prefs.setStringList(
        'ff_payGearsList', value.map((x) => x.serialize()).toList());
  }

  void addToPayGearsList(PayGearsStruct value) {
    payGearsList.add(value);
    prefs.setStringList(
        'ff_payGearsList', _payGearsList.map((x) => x.serialize()).toList());
  }

  void removeFromPayGearsList(PayGearsStruct value) {
    payGearsList.remove(value);
    prefs.setStringList(
        'ff_payGearsList', _payGearsList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPayGearsList(int index) {
    payGearsList.removeAt(index);
    prefs.setStringList(
        'ff_payGearsList', _payGearsList.map((x) => x.serialize()).toList());
  }

  void updatePayGearsListAtIndex(
    int index,
    PayGearsStruct Function(PayGearsStruct) updateFn,
  ) {
    payGearsList[index] = updateFn(_payGearsList[index]);
    prefs.setStringList(
        'ff_payGearsList', _payGearsList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPayGearsList(int index, PayGearsStruct value) {
    payGearsList.insert(index, value);
    prefs.setStringList(
        'ff_payGearsList', _payGearsList.map((x) => x.serialize()).toList());
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  UserStruct _User =
      UserStruct.fromSerializableMap(jsonDecode('{\"id\":\"1\"}'));
  UserStruct get User => _User;
  set User(UserStruct value) {
    _User = value;
    prefs.setString('ff_User', value.serialize());
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_User);
    prefs.setString('ff_User', _User.serialize());
  }

  List<PartnerStruct> _partnerList = [
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816716695947616258\",\"name\":\"Emily\",\"brief\":\"Emily\",\"introduce\":\"你的名字叫Emily，是一个穿粉红色长裙，大波浪长发且性感漂亮的亚洲女生，请使用英文回复。\",\"headUrl\":\"assets/images/tirosResult0.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816716786372616194\",\"name\":\"Sarah\",\"brief\":\"Sarah\",\"introduce\":\"你的名字叫Sarah，是一个穿着蓝色长裙，棕色波浪头发的性感女模特。请使用英文回复。\",\"headUrl\":\"assets/images/tirosResult1.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816716860972507137\",\"name\":\"Sophia\",\"brief\":\"Sophia\",\"introduce\":\"你的名字叫Sophia，是一个穿着黑色T恤，深棕色波浪长发的亚洲女生,请使用英文回复。\",\"headUrl\":\"assets/images/tirosResult2.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717076308074498\",\"name\":\"Emma\",\"brief\":\"Emma\",\"introduce\":\"你的名字叫Emma，是一个穿着白色晚礼服长裙，棕色长发大波浪的漂亮女生，请使用英文回复\",\"headUrl\":\"assets/images/tirosResult3.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717579184152577\",\"name\":\"Laura\",\"brief\":\"Laura\",\"introduce\":\"你的名字叫Laura，是一个穿着蓝色长裙，棕色中长发的亚洲女生，请使用英文回复\",\"headUrl\":\"assets/images/tirosResult4.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717579184152578\",\"name\":\"Olivia\",\"brief\":\"Olivia\",\"introduce\":\"你的名字叫Olivia，是一个穿着短袖，黑色长直发，时尚的亚洲女生，请使用英文回复。\",\"headUrl\":\"assets/images/tirosResult5.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717579184152579\",\"name\":\"Akira\",\"brief\":\"Akira\",\"introduce\":\"你的名字叫Akira，是一个穿着晚礼服，黑色大波浪长发的女生，请使用英文回复\",\"headUrl\":\"assets/images/tirosResult6.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717647719079937\",\"name\":\"Gilbert\",\"brief\":\"Gilbert\",\"introduce\":\"你的名字叫Gilbert，是一个黑色短发，穿着黑色西服，长相帅气的男生，请使用英文回复\",\"headUrl\":\"assets/images/tirosResult7.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717722067312642\",\"name\":\"Lucille\",\"brief\":\"Lucille\",\"introduce\":\"你的名字叫Lucille，是一个黑色短发，爱好健身，五官俊秀的男生，请使用英文回复\",\"headUrl\":\"assets/images/tirosResult8.png\",\"isLike\":\"false\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1816717783006355458\",\"name\":\"Pratt\",\"brief\":\"Pratt\",\"introduce\":\"你的名字叫Pratt，是一个黑色中分短发，身材匀称，五官端正的男生，请使用英文回复。\",\"headUrl\":\"assets/images/tirosResult9.png\",\"isLike\":\"false\"}'))
  ];
  List<PartnerStruct> get partnerList => _partnerList;
  set partnerList(List<PartnerStruct> value) {
    _partnerList = value;
    prefs.setStringList(
        'ff_partnerList', value.map((x) => x.serialize()).toList());
  }

  void addToPartnerList(PartnerStruct value) {
    partnerList.add(value);
    prefs.setStringList(
        'ff_partnerList', _partnerList.map((x) => x.serialize()).toList());
  }

  void removeFromPartnerList(PartnerStruct value) {
    partnerList.remove(value);
    prefs.setStringList(
        'ff_partnerList', _partnerList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPartnerList(int index) {
    partnerList.removeAt(index);
    prefs.setStringList(
        'ff_partnerList', _partnerList.map((x) => x.serialize()).toList());
  }

  void updatePartnerListAtIndex(
    int index,
    PartnerStruct Function(PartnerStruct) updateFn,
  ) {
    partnerList[index] = updateFn(_partnerList[index]);
    prefs.setStringList(
        'ff_partnerList', _partnerList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPartnerList(int index, PartnerStruct value) {
    partnerList.insert(index, value);
    prefs.setStringList(
        'ff_partnerList', _partnerList.map((x) => x.serialize()).toList());
  }

  List<AiStruct> _likeList = [];
  List<AiStruct> get likeList => _likeList;
  set likeList(List<AiStruct> value) {
    _likeList = value;
    prefs.setStringList(
        'ff_likeList', value.map((x) => x.serialize()).toList());
  }

  void addToLikeList(AiStruct value) {
    likeList.add(value);
    prefs.setStringList(
        'ff_likeList', _likeList.map((x) => x.serialize()).toList());
  }

  void removeFromLikeList(AiStruct value) {
    likeList.remove(value);
    prefs.setStringList(
        'ff_likeList', _likeList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLikeList(int index) {
    likeList.removeAt(index);
    prefs.setStringList(
        'ff_likeList', _likeList.map((x) => x.serialize()).toList());
  }

  void updateLikeListAtIndex(
    int index,
    AiStruct Function(AiStruct) updateFn,
  ) {
    likeList[index] = updateFn(_likeList[index]);
    prefs.setStringList(
        'ff_likeList', _likeList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLikeList(int index, AiStruct value) {
    likeList.insert(index, value);
    prefs.setStringList(
        'ff_likeList', _likeList.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
