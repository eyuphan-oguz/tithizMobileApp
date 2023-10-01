import 'dart:convert';

import 'package:tithiz/Model/User/User.dart';
import 'package:tithiz/Repository/User/UserRepository.dart';
import 'package:http/http.dart' as http;

class UserAPI implements UserRepository{
  @override
  Future<void> getUser({required String email, required String password}) async{
    final String apiUrl = 'http://127.0.0.1:8080/myAccount'; // API'nin URL'si

    final String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$email:$password'));

    final response = await http.get(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Authorization': basicAuth,
        'Content-Type': 'application/json',
      },

      // Diğer istek parametrelerini ayarlayabilirsiniz
    );

    if (response.statusCode == 200) {
      // Başarılı giriş yanıtını işleyin
      final responseData = json.decode(json.encode(response.body));
      print('Giriş başarılı: $responseData');
    } else {
      // Giriş başarısız ise hata mesajını işleyin
      print('Giriş başarısız. Hata kodu: ${response.statusCode}');
      print('Hata mesajı: ${response.body}');
    }
  }
  }


