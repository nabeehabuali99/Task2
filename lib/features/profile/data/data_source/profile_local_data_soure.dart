import '../../domain/entities/profile.dart';
import '../model/profile_model.dart';

abstract class ProfileLocalDataSource {
  Future<void> removeOneOfListSearchLocal(int indexOfListSearch);

  Future<void> removeOneOfListAyaLocal(int indexOfListAya);

  Future<void> addNewOneListOfAyaLocal(String nameOfList);

  Future<void> addNewOneListOfSearchLocal(String nameOfSearch);

  Future<List<ProfileModel>> getAllListOfSearchLocal();

  Future<List<ProfileModel>> getAllListOfAyaLocal();
}
class ProfileLocalDataSourceImplementation implements ProfileLocalDataSource {
  @override
  Future<void> addNewOneListOfAyaLocal(String nameOfList) {
    // TODO: implement addNewOneListOfAya
    throw UnimplementedError();
  }

  @override
  Future<void> addNewOneListOfSearchLocal(String nameOfSearch) {
    // TODO: implement addNewOneListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<List<ProfileModel>> getAllListOfAyaLocal() {
    // TODO: implement getAllListOfAya
    throw UnimplementedError();
  }

  @override
  Future<List<ProfileModel>> getAllListOfSearchLocal() {
    // TODO: implement getAllListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<void> removeOneOfListAyaLocal(int indexOfListAya) {
    // TODO: implement removeOneOfListAya
    throw UnimplementedError();
  }

  @override
  Future<void> removeOneOfListSearchLocal(int indexOfListSearch) {
    // TODO: implement removeOneOfListSearch
    throw UnimplementedError();
  }

}

