import 'dart:developer';

import 'package:http/http.dart' as http;

class RoboServices {
  static const endpoint = '192.168.4.1';

  Future<void> andar({required String posicao}) async {
    final url = Uri.http(endpoint, posicao);
    var response = await http.get(url); 
    if (response.statusCode == 200) {
      log('Funcionou para $posicao');
    }
  }
}
