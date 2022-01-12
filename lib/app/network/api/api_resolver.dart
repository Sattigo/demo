import 'package:demo/app/network/api/api_version.dart';

class ApiResolver {
  static const _apiMap = <String, ApiVersion>{
    '': ApiVersion0(),
    'v1': ApiVersion1(),
    'v2': ApiVersion2(),
  };

  static ApiVersion get v0 => _apiMap['']!;

  static ApiVersion get v1 => _apiMap['v1']!;

  static ApiVersion get v2 => _apiMap['v2']!;
}
