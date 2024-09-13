import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<bool> _likeList = [true, true, true];
  List<bool> get likeList => _likeList;
  set likeList(List<bool> value) {
    _likeList = value;
  }

  void addToLikeList(bool value) {
    likeList.add(value);
  }

  void removeFromLikeList(bool value) {
    likeList.remove(value);
  }

  void removeAtIndexFromLikeList(int index) {
    likeList.removeAt(index);
  }

  void updateLikeListAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    likeList[index] = updateFn(_likeList[index]);
  }

  void insertAtIndexInLikeList(int index, bool value) {
    likeList.insert(index, value);
  }

  bool _text1 = false;
  bool get text1 => _text1;
  set text1(bool value) {
    _text1 = value;
  }

  int _number1 = 0;
  int get number1 => _number1;
  set number1(int value) {
    _number1 = value;
  }

  List<String> _dropDwon = ['qqqq', 'wwwww', 'eeee', 'rrrrrr'];
  List<String> get dropDwon => _dropDwon;
  set dropDwon(List<String> value) {
    _dropDwon = value;
  }

  void addToDropDwon(String value) {
    dropDwon.add(value);
  }

  void removeFromDropDwon(String value) {
    dropDwon.remove(value);
  }

  void removeAtIndexFromDropDwon(int index) {
    dropDwon.removeAt(index);
  }

  void updateDropDwonAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dropDwon[index] = updateFn(_dropDwon[index]);
  }

  void insertAtIndexInDropDwon(int index, String value) {
    dropDwon.insert(index, value);
  }

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

  List<UserMessageStruct> _userMessageList = [
    UserMessageStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"avatar\":\"https://picsum.photos/seed/354/600\",\"title\":\"Hello World\",\"content\":\"Hello World\",\"state\":\"1\",\"crateTime\":\"1725954476499\"}')),
    UserMessageStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"avatar\":\"https://picsum.photos/seed/555/600\",\"title\":\"Hello World\",\"content\":\"Hello World\",\"state\":\"2\",\"crateTime\":\"1725954763857\"}'))
  ];
  List<UserMessageStruct> get userMessageList => _userMessageList;
  set userMessageList(List<UserMessageStruct> value) {
    _userMessageList = value;
  }

  void addToUserMessageList(UserMessageStruct value) {
    userMessageList.add(value);
  }

  void removeFromUserMessageList(UserMessageStruct value) {
    userMessageList.remove(value);
  }

  void removeAtIndexFromUserMessageList(int index) {
    userMessageList.removeAt(index);
  }

  void updateUserMessageListAtIndex(
    int index,
    UserMessageStruct Function(UserMessageStruct) updateFn,
  ) {
    userMessageList[index] = updateFn(_userMessageList[index]);
  }

  void insertAtIndexInUserMessageList(int index, UserMessageStruct value) {
    userMessageList.insert(index, value);
  }

  List<PartnerStruct> _partnerList = [
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/396/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/701/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/987/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/746/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/891/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/270/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/301/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/60/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/94/600\"}')),
    PartnerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Hello World\",\"introduce\":\"Hello World\",\"marks\":\"Hello World\",\"isLike\":\"false\",\"avatar\":\"https://picsum.photos/seed/602/600\"}'))
  ];
  List<PartnerStruct> get partnerList => _partnerList;
  set partnerList(List<PartnerStruct> value) {
    _partnerList = value;
  }

  void addToPartnerList(PartnerStruct value) {
    partnerList.add(value);
  }

  void removeFromPartnerList(PartnerStruct value) {
    partnerList.remove(value);
  }

  void removeAtIndexFromPartnerList(int index) {
    partnerList.removeAt(index);
  }

  void updatePartnerListAtIndex(
    int index,
    PartnerStruct Function(PartnerStruct) updateFn,
  ) {
    partnerList[index] = updateFn(_partnerList[index]);
  }

  void insertAtIndexInPartnerList(int index, PartnerStruct value) {
    partnerList.insert(index, value);
  }

  List<ChatListStruct> _chatList = [
    ChatListStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"sendUserId\":\"1\",\"receiveUserId\":\"2\",\"content\":\"Hello World1\",\"createTime\":\"1726196583111\",\"sendTime\":\"1726196583111\"}')),
    ChatListStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"sendUserId\":\"1\",\"receiveUserId\":\"2\",\"content\":\"Hello World2\",\"createTime\":\"1726196596662\",\"sendTime\":\"1726196596662\"}')),
    ChatListStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"sendUserId\":\"2\",\"receiveUserId\":\"1\",\"content\":\"Hello World3\",\"createTime\":\"1726196605905\",\"sendTime\":\"1726196605905\"}')),
    ChatListStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"sendUserId\":\"1\",\"receiveUserId\":\"2\",\"content\":\"Hello World4\",\"createTime\":\"1726196616213\",\"sendTime\":\"1726196616213\"}')),
    ChatListStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"sendUserId\":\"2\",\"receiveUserId\":\"1\",\"content\":\"Hello World5\",\"createTime\":\"1726196623987\",\"sendTime\":\"1726196623987\"}'))
  ];
  List<ChatListStruct> get chatList => _chatList;
  set chatList(List<ChatListStruct> value) {
    _chatList = value;
  }

  void addToChatList(ChatListStruct value) {
    chatList.add(value);
  }

  void removeFromChatList(ChatListStruct value) {
    chatList.remove(value);
  }

  void removeAtIndexFromChatList(int index) {
    chatList.removeAt(index);
  }

  void updateChatListAtIndex(
    int index,
    ChatListStruct Function(ChatListStruct) updateFn,
  ) {
    chatList[index] = updateFn(_chatList[index]);
  }

  void insertAtIndexInChatList(int index, ChatListStruct value) {
    chatList.insert(index, value);
  }

  String _payCount = '';
  String get payCount => _payCount;
  set payCount(String value) {
    _payCount = value;
  }

  List<PayGearsStruct> _payGearsList = [
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"payCount\":\"0.99\",\"getCount\":\"0.99\",\"chooseState\":\"1\",\"state\":\"1\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"payCount\":\"4.99\",\"getCount\":\"4.99\",\"chooseState\":\"0\",\"state\":\"1\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"payCount\":\"9.99\",\"getCount\":\"9.99\",\"chooseState\":\"0\",\"state\":\"1\"}')),
    PayGearsStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"payCount\":\"19.99\",\"getCount\":\"19.99\",\"chooseState\":\"0\",\"state\":\"1\"}'))
  ];
  List<PayGearsStruct> get payGearsList => _payGearsList;
  set payGearsList(List<PayGearsStruct> value) {
    _payGearsList = value;
  }

  void addToPayGearsList(PayGearsStruct value) {
    payGearsList.add(value);
  }

  void removeFromPayGearsList(PayGearsStruct value) {
    payGearsList.remove(value);
  }

  void removeAtIndexFromPayGearsList(int index) {
    payGearsList.removeAt(index);
  }

  void updatePayGearsListAtIndex(
    int index,
    PayGearsStruct Function(PayGearsStruct) updateFn,
  ) {
    payGearsList[index] = updateFn(_payGearsList[index]);
  }

  void insertAtIndexInPayGearsList(int index, PayGearsStruct value) {
    payGearsList.insert(index, value);
  }
}
