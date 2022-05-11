import '../model/menu_model.dart';

abstract class MenuLocalDataSource {
  Future<List<MenuModel>> getNameOfPartBySearch(String nameOfPart);

  Future<List<MenuModel>> getNameOfSoraBySearch(String nameOfSora);

  Future<MenuModel> getNumberOfSoraPageBySearch(int numberOfPage);

  Future<List<MenuModel>> getAllListNameOfParts();

  Future<List<MenuModel>> getAllListNameOfSora();
}

class MenuLocalDataSourceImplementation implements MenuLocalDataSource {
  @override
  Future<List<MenuModel>> getNameOfPartBySearch(String nameOfPart) {
    // TODO: implement getNameOfPartBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getNameOfSoraBySearch(String nameOfSora) {
    // TODO: implement getNameOfSoraBySearch
    throw UnimplementedError();
  }

  @override
  Future<MenuModel> getNumberOfSoraPageBySearch(int numberOfPage) {
    // TODO: implement getNumberOfSoraPageBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfParts() {
    // TODO: implement getAllListNameOfParts
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfSora() {
    // TODO: implement getAllListNameOfSora
    throw UnimplementedError();
  }
}
