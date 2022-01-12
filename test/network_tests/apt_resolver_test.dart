import 'package:flutter_test/flutter_test.dart';
import 'package:demo/app/network/api/api_resolver.dart';

void main() {
  test('all api endpoint strings should be correct', () {
    final String product = ApiResolver.v0.doggos;
    expect(product, equals('/doggos?filter=mp4,png,gif'));

    final String shop = ApiResolver.v0.woof;
    expect(shop, equals('/woof?filter=mp4,png,gif'));
  });
}
