import '../model/menu_model.dart';

abstract class MenuLocalDataSource {
  Future<List<MenuModel>> getNameOfPartBySearchLocal(String nameOfPart);

  Future<List<MenuModel>> getNameOfSoraBySearchLocal(String nameOfSora);

  Future<void> getNumberOfSoraPageBySearchLocal(int numberOfPage);

  Future<List<MenuModel>> getAllListNameOfPartsLocal();

  Future<List<MenuModel>> getAllListNameOfSoraLocal();
  Future<void> getSuitablePartLocal(int numberOfPart);

  Future<void> getSuitableSoraLocal(int numberOfSora);
}

class MenuLocalDataSourceImplementation implements MenuLocalDataSource {
  @override
  Future<List<MenuModel>> getNameOfPartBySearchLocal(String nameOfPart) {
    // TODO: implement getNameOfPartBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getNameOfSoraBySearchLocal(String nameOfSora) {
    // TODO: implement getNameOfSoraBySearch
    throw UnimplementedError();
  }

  @override
  Future<void> getNumberOfSoraPageBySearchLocal(int numberOfPage) {
    // TODO: implement getNumberOfSoraPageBySearch
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfPartsLocal() {
    // TODO: implement getAllListNameOfParts
    throw UnimplementedError();
  }

  @override
  Future<List<MenuModel>> getAllListNameOfSoraLocal() {
    // TODO: implement getAllListNameOfSora
    throw UnimplementedError();
  }

  @override
  Future<void> getSuitablePartLocal(int numberOfPart) {
    // TODO: implement getSuitablePartLocal
    throw UnimplementedError();
  }

  @override
  Future<void> getSuitableSoraLocal(int numberOfSora) {
    // TODO: implement getSuitableSoraLocal
    throw UnimplementedError();
  }
}
