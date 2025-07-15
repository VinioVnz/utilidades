import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  //usar api local
  /* 
  http://10.0.2.2:3000
   */
  //final _baseUrl = "https://api-bornhofen.onrender.com";
  final _baseUrl = "http://10.0.2.2:3000";

  Future<String?> login(Map<String, dynamic> data) async {
    final url = Uri.parse('$_baseUrl/login');

    final response = await http.post(
      url,
      headers: {'Content-Type' : 'application/json'},
      body: jsonEncode(data)
    );
  
    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      return json['token'];
    } else {
      return null;
    }
  } 
}