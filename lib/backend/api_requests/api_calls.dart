import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ai Group Code

class AiGroup {
  static String getBaseUrl() => 'https://masia.tcqyhxy.top/';
  static Map<String, String> headers = {
    'userType': 'app_user',
    'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
    'content-language': 'en_Us',
  };
  static LoginCall loginCall = LoginCall();
  static FindConditionAiCall findConditionAiCall = FindConditionAiCall();
  static AddAiCall addAiCall = AddAiCall();
  static DeleteAiCall deleteAiCall = DeleteAiCall();
  static AiChatCall aiChatCall = AiChatCall();
  static FindAiTypeListCall findAiTypeListCall = FindAiTypeListCall();
  static UploadCall uploadCall = UploadCall();
}

class LoginCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "phonenumber": "13876539876",
  "smsCode": "1245",
  "systemType": 18
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}api/app/sms/login',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindConditionAiCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'findConditionAi',
      apiUrl: '${baseUrl}api/ai/findConditionAi?pageSize=10&pageNum=1',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddAiCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'addAi',
      apiUrl: '${baseUrl}api/ai/addAi',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAiCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAi',
      apiUrl: '${baseUrl}api/ai/deleteAi',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AiChatCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'aiChat',
      apiUrl: '${baseUrl}api/ai/aiChat',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindAiTypeListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'findAiTypeList',
      apiUrl: '${baseUrl}api/ai/findAiTypeList',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'upload',
      apiUrl: '${baseUrl}api/app/upload/',
      callType: ApiCallType.POST,
      headers: {
        'userType': 'app_user',
        'Authorization': 'Bearer 3771adfb-8560-46a3-b57f-992a6104c253',
        'content-language': 'en_Us',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ai Group Code

class GetAllPassengerCall {
  static Future<ApiCallResponse> call({
    int? page,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllPassenger',
      apiUrl: 'https://api.instantwebtools.net/v2/passenger',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'size': 20,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersCall {
  static Future<ApiCallResponse> call({
    int? page,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsers',
      apiUrl: 'https://reqres.in/api/users',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
