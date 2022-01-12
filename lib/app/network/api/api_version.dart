abstract class ApiVersion {
  final String version;

  const ApiVersion({required this.version});

  /// This is what the code could look like if different versions of
  /// the API are supposed to be used.

  /// String get doggos => '/$version/doggos?filter=mp4,png,gif';
  /// String get woof => '/$version/woof?filter=mp4,png,gif';

  String get doggos => '/doggos?filter=mp4,png,gif';

  String get woof => '/woof?filter=mp4,png,gif';
}

class ApiVersion0 extends ApiVersion {
  const ApiVersion0() : super(version: '');
}

class ApiVersion1 extends ApiVersion {
  const ApiVersion1() : super(version: 'v1');
}

class ApiVersion2 extends ApiVersion {
  const ApiVersion2() : super(version: 'v2');
}
