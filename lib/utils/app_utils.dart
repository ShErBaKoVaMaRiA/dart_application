import 'dart:io';

import 'package:jaguar_jwt/jaguar_jwt.dart';

abstract class AppUtils {
  const AppUtils._();
  static int getIdFromToken(String token) {
    try {
      final key = Platform.environment["SECRET_KEY"] ?? "SECRET_KEY";
      final jwtCLaim = verifyJwtHS256Signature(token, key);
      return int.parse(jwtCLaim["id"].toString());
    } catch (e) {
      rethrow;
    }
  }
}
