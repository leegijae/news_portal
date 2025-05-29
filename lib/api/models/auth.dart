// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Auth {
  final String uid;
  final String token;
  final String tokenType;
  final int expiresIn;
  final int expiresAt;
  Auth({
    required this.uid,
    required this.token,
    required this.tokenType,
    required this.expiresIn,
    required this.expiresAt,
  });

  Auth copyWith({
    String? uid,
    String? token,
    String? tokenType,
    int? expiresIn,
    int? expiresAt,
  }) {
    return Auth(
      uid: uid ?? this.uid,
      token: token ?? this.token,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': uid,
      'access_token': token,
      'token_Type': tokenType,
      'expires_In': expiresIn,
      'expires_At': expiresAt,
    };
  }

  factory Auth.fromMap(Map<String, dynamic> map) {
    return Auth(
      uid: map['user_id'] as String,
      token: map['access_token'] as String,
      tokenType: map['token_Type'] as String,
      expiresIn: map['expires_In'] as int,
      expiresAt: map['expires_At'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Auth.fromJson(String source) =>
      Auth.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Auth(uid: $uid, token: $token, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(covariant Auth other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.token == token &&
        other.tokenType == tokenType &&
        other.expiresIn == expiresIn &&
        other.expiresAt == expiresAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        token.hashCode ^
        tokenType.hashCode ^
        expiresIn.hashCode ^
        expiresAt.hashCode;
  }
}
