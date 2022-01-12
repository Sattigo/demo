import 'package:demo/app/repositories/dogs/dogs_repository.dart';
import 'package:demo/app/services/remote/remote_service.dart';

class HttpDogsRepository extends DogsRepository {
  final RemoteService remoteService;

  HttpDogsRepository({required this.remoteService});

  @override
  Future<List<String>> getDogs() async {
    return await remoteService.getDogs();
  }

  @override
  Future<String> getWoof() async {
    return await remoteService.getWoof();
  }
}
