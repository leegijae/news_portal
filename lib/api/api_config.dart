class ApiConfig {
  static const String baseUrl =
      'https://daelim-server.fleecy.dev/functions/v1/';
  static const String functionUrl = '$baseUrl/functions/';

  static final auth = (login: '$functionUrl/auth/get-token');
}
