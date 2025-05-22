import 'dart:convert';
import 'package:easy_extension/easy_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_portal/api/api_config.dart';
import 'package:news_portal/api/models/Auth.dart';

class AuthApi {
  static Future<Auth?> login({
    required String email,
    required String password,
  }) async {
    final result = await http
        .post(
          Uri.parse(ApiConfig.auth.login),
          body: jsonEncode({'email': email, 'password': password}),
        )
        .timeout(
          5.toSecond,
          onTimeout: () {
            return http.Response('timeout', 500);
          },
        );
    final statusCode = result.statusCode;
    final body = result.body;
    final data = jsonDecode(body);
    final auth = Auth.fromMap(data);

    Log.green(auth);

    Log.blue('Auth 생성 완료');

    return auth;
  }
}
