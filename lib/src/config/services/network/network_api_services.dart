import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../export/export.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
class NetWorkAPIService implements BaseApiServices {
  // NetWorkAPIService._();

  @override
  Future getApi(String url) async {
    Utils.printRequestLogs(url: url);
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }

  @override
  Future postApi(String url, data, headers) async {
    Utils.printRequestLogs(url: url, data: data.toString());
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(data),
        headers: headers,
      );

      Utils.printResponseLogs(data: response.body.toString());
      // responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }

  @override
  Future deleteApi(String url, data) async {
    Utils.printRequestLogs(url: url, data: data.toString());
    dynamic responseJson;
    try {
      final response = await http.delete(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }

  @override
  Future putApi(String url, data) async {
    Utils.printRequestLogs(url: url, data: data.toString());
    dynamic responseJson;
    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    } on Exception catch (e) {
      Utils.printExceptionLogs(data: e.toString());
    }
    return responseJson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
    case 400:
      return handleResponse(response);
    case 500:
      throw ServerException();
    default:
      throw FetchDataException();
  }
}

dynamic handleResponse(http.Response response) {
  dynamic responseJson = jsonDecode(response.body);
  Utils.printResponseLogs(data: responseJson);
  return responseJson;
}
