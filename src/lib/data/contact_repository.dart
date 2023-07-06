import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:src/data/contact_model.dart';

class ContactRepository {
  final apiUrl = 'https://api.byteplex.info/api/test/contact/';

  Future<void> sendMessage(MessageModel message) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(message.toJsom()),
      headers: {"content-type": "application/json"},
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to send message');
    }
  }
}
