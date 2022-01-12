import 'package:demo/app/network/api/api_resolver.dart';
import 'package:demo/app/services/remote/remote_service.dart';
import 'package:dio/dio.dart';

class DioRemoteService extends RemoteService {
  final Dio client;

  DioRemoteService({required this.client});

  @override
  Future<List<String>> getDogs() async {
    final httpResponse = await client.get(ApiResolver.v0.doggos);
    final dogsList = <String>[];
    for (final picture in httpResponse.data) {
      dogsList.add(picture);
    }
    return dogsList;
  }

  @override
  Future<String> getWoof() async {
    final httpResponse = await client.get(ApiResolver.v0.woof);
    return httpResponse.data;
  }
}
