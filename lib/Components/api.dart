import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  final String url = 'http://192.168.55.60:8000/api/';

  postData(data, apiUrl) async {
    var fullUrl = url + apiUrl;
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: setHeaders());
  }

  getData(apiUrl) async {
    var fullUrl = url + apiUrl;
    return await http.get(fullUrl as Uri, headers: setHeaders());
  }

  setHeaders() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
