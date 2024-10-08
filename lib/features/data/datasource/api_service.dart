// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:food_delivery_app_ui/features/data/models/model.dart';

class ApiService {
  static Future<List<Notification>> getNotification() async {
    const String apiUrl = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
    try {
      var response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        
        return compute(_parseNotification, response.body);
      }
    } catch (e) {
      print(e.toString());
    }
    return [];
  }
}


List<Notification> _parseNotification(String responseBody) {

  final List<dynamic> data = jsonDecode(responseBody)['data'];
  
  return data.map((json) => Notification.fromJson(json)).toList().cast<Notification>();
}
