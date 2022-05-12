import '../model/menu_model.dart';
import 'package:http/http.dart' as http;

abstract class MenuRemoteDataSource {
  Future<List<MenuModel>> getNameOfPartBySearchRemote(String nameOfPart);

  Future<List<MenuModel>> getNameOfSoraBySearchRemote(String nameOfSora);

  Future<void> getNumberOfSoraPageBySearchRemote(int numberOfPage);

  Future<List<MenuModel>> getAllListNameOfPartsRemote();

  Future<List<MenuModel>> getAllListNameOfSoraRemote();
}

class MenuRemoteDataSourceImplementation implements MenuRemoteDataSource {
  late final http.Client client;

  @override
  Future<List<MenuModel>> getNameOfPartBySearchRemote(String nameOfPart) {
    // TODO: implement getNameOfPartBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getNameOfSoraBySearchRemote(String nameOfSora) {
    // TODO: implement getNameOfSoraBySearch
    throw UnimplementedError();
  }

  @override
  Future<void> getNumberOfSoraPageBySearchRemote(int numberOfPage) {
    // TODO: implement getNumberOfSoraPageBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfPartsRemote() {
    // TODO: implement getAllListNameOfParts
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfSoraRemote() {
    // TODO: implement getAllListNameOfSora
    throw UnimplementedError();
  }
}
