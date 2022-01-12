abstract class DogsRepository {
  Future<List<String>> getDogs();

  Future<String> getWoof();
}
