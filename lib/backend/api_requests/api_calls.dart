import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca CEP',
      apiUrl: 'https://viacep.com.br/ws/$cep/json/',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? ibge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ibge''',
      ));
}

class InsertPetsCall {
  static Future<ApiCallResponse> call({
    dynamic dadosJson,
  }) async {
    final dados = _serializeJson(dadosJson, true);
    final ffApiRequestBody = dados;
    return ApiManager.instance.makeApiCall(
      callName: 'INSERT PETS',
      apiUrl: 'https://lowtykdaezuwtgykrqzw.supabase.co/rest/v1/pets',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxvd3R5a2RhZXp1d3RneWtycXp3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkyMzc1MDAsImV4cCI6MjAzNDgxMzUwMH0.chGInWMq4unlbfdpVU1cLsTvepOEWHkHpj2JUS_cQCM',
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

class ClienteAsaasCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? mobilePhone = '',
    String? cpfCnpj = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "cpfCnpj": "$cpfCnpj",
  "email": "$email",
  "mobilePhone": "$mobilePhone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CLIENTE ASAAS',
      apiUrl: 'https://sandbox.asaas.com/api/v3/customers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwOTMyMDI6OiRhYWNoXzBmNDMzNzJiLTI4OWEtNDlhNS1iMmNhLTFhODdiZTE3NTNlZA==',
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

  static String? customerId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class PrimeiraCobrancaAsaasCall {
  static Future<ApiCallResponse> call({
    String? customer = '',
    String? dueDate = '2024-11-01',
    double? value,
  }) async {
    final ffApiRequestBody = '''
{
  "customer": "$customer",
  "billingType": "CREDIT_CARD",
  "dueDate": "$dueDate",
  "value": 0.98,
  "description": "Primeira Cobrança"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PRIMEIRA COBRANCA ASAAS',
      apiUrl: 'https://sandbox.asaas.com/api/v3/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwOTMyMDI6OiRhYWNoXzBmNDMzNzJiLTI4OWEtNDlhNS1iMmNhLTFhODdiZTE3NTNlZA==',
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

  static String? invoiceUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
}

class CincoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CINCO',
      apiUrl: 'https://viacep.com.br/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SeisCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SEIS',
      apiUrl: 'https://viacep.com.br/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    double? value,
    String? nextDueDate = '',
    String? remoteIp = '',
    String? creditCardToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "billingType": "CREDIT_CARD",
  "cycle": "MONTHLY",
  "customer": "$customerId",
  "value": $value,
  "nextDueDate": "$nextDueDate",
  "remoteIp": "$remoteIp",
  "creditCardToken": "$creditCardToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CRIA ASSINATURA',
      apiUrl: 'https://sandbox.asaas.com/api/v3/subscriptions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwOTMyMDI6OiRhYWNoXzBmNDMzNzJiLTI4OWEtNDlhNS1iMmNhLTFhODdiZTE3NTNlZA==',
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

  static String? assinaturaId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? dataCriacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dateCreated''',
      ));
  static double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class TokenCartaoDeCreditoCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? holderName = '',
    String? number = '',
    String? expiryMonth = '',
    String? expiryYear = '',
    String? ccv = '',
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? postalCode = '14806463',
    String? addressNumber = '123',
    String? addressComplement = '',
    String? phone = '',
    String? remoteIp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "creditCard": {
    "holderName": "$holderName",
    "number": "$number",
    "expiryMonth": "$expiryMonth",
    "expiryYear": "$expiryYear",
    "ccv": "$ccv"
  },
  "creditCardHolderInfo": {
    "name": "$name",
    "email": "$email",
    "cpfCnpj": "$cpfCnpj",
    "postalCode": "$postalCode",
    "addressNumber": "$addressNumber",
    "phone": "$phone",
    "addressComplement": "$addressComplement"
  },
  "customer": "$customerId",
  "remoteIp": "$remoteIp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TOKEN CARTAO DE CREDITO',
      apiUrl: 'https://sandbox.asaas.com/api/v3/creditCard/tokenizeCreditCard',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/json',
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwOTMyMDI6OiRhYWNoXzBmNDMzNzJiLTI4OWEtNDlhNS1iMmNhLTFhODdiZTE3NTNlZA==',
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

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creditCardToken''',
      ));
}

class GetIpCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET IP',
      apiUrl: 'https://api.ipify.org?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? ip(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ip''',
      ));
}

class ConferirAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CONFERIR ASSINATURA',
      apiUrl:
          'https://lowtykdaezuwtgykrqzw.supabase.co/rest/v1/assinaturas?user_id=eq.$userId&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxvd3R5a2RhZXp1d3RneWtycXp3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkyMzc1MDAsImV4cCI6MjAzNDgxMzUwMH0.chGInWMq4unlbfdpVU1cLsTvepOEWHkHpj2JUS_cQCM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxvd3R5a2RhZXp1d3RneWtycXp3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkyMzc1MDAsImV4cCI6MjAzNDgxMzUwMH0.chGInWMq4unlbfdpVU1cLsTvepOEWHkHpj2JUS_cQCM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  static String? assinaturaId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].assinatura_id''',
      ));
}

class FiltraLaudosCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? veterinarioId,
    int? clinicaId,
    String? dataInicial = '',
    String? dataFinal = '',
    String? naturezaOperacao = '',
    String? statusPagamento = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FILTRA LAUDOS',
      apiUrl:
          'https://lowtykdaezuwtgykrqzw.supabase.co/functions/v1/financeiro_filtro?user_id=eq.$userId&veterinario_id=eq.$veterinarioId&clinica_id=eq.$clinicaId&data_exame=gte.$dataInicial&data_exame=lte.$dataFinal&natureza_operacao=eq.$naturezaOperacao&status=eq.$statusPagamento',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            '2662db3c9cd842ee1f2e3a40867b0761bc2051cef867208d597e947f85eb8408',
        'Authorization':
            'Bearer 2662db3c9cd842ee1f2e3a40867b0761bc2051cef867208d597e947f85eb8408',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TesteLaudosDetalhadosCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Teste Laudos Detalhados',
      apiUrl: '$url',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxvd3R5a2RhZXp1d3RneWtycXp3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkyMzc1MDAsImV4cCI6MjAzNDgxMzUwMH0.chGInWMq4unlbfdpVU1cLsTvepOEWHkHpj2JUS_cQCM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxvd3R5a2RhZXp1d3RneWtycXp3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkyMzc1MDAsImV4cCI6MjAzNDgxMzUwMH0.chGInWMq4unlbfdpVU1cLsTvepOEWHkHpj2JUS_cQCM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HTMLtoPDFCall {
  static Future<ApiCallResponse> call({
    String? codigoHtml = ' ',
    String? nome = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HTMLtoPDF',
      apiUrl:
          'https://wvor3a.buildship.run/htmltopdf?codigo=$codigoHtml&nome=$nome',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Body''',
      ));
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
