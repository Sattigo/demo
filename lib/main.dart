import 'package:demo/app/network/http_service.dart';
import 'package:demo/app/services/remote/dio_remote_service.dart';
import 'package:demo/app/services/remote/remote_service.dart';
import 'package:demo/app/application.dart';
import 'package:demo/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      Provider<Dio>(
          create: (ctx) => HttpService.getClient(apiUrl: Constants.baseUrl)),
      ProxyProvider<Dio, RemoteService>(
        update: (_, client, __) => DioRemoteService(client: client),
      ),
    ],
    child: const Application(),
  ));
}
