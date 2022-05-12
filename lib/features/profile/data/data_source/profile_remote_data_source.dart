
import '../model/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<void> removeOneOfListSearchRemote(int indexOfListSearch);

  Future<void> removeOneOfListAyaRemote(int indexOfListAya);

  Future<ProfileModel> addNewOneListOfAyaRemote(String nameOfList);

  Future<ProfileModel> addNewOneListOfSearchRemote(String nameOfSearch);

  Future<List<ProfileModel>> getAllListOfSearchRemote();

  Future<List<ProfileModel>> getAllListOfAyaRemote();
}
class ProfileRemoteDataSourceImplementation implements ProfileRemoteDataSource {
  @override
  Future<ProfileModel> addNewOneListOfAyaRemote(String nameOfList) {
    // TODO: implement addNewOneListOfAya
    throw UnimplementedError();
  }

  @override
  Future<ProfileModel> addNewOneListOfSearchRemote(String nameOfSearch) {
    // TODO: implement addNewOneListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<List<ProfileModel>> getAllListOfAyaRemote() {
    // TODO: implement getAllListOfAya
    throw UnimplementedError();
  }

  @override
  Future<List<ProfileModel>> getAllListOfSearchRemote() {
    // TODO: implement getAllListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<void> removeOneOfListAyaRemote(int indexOfListAya) {
    // TODO: implement removeOneOfListAya
    throw UnimplementedError();
  }

  @override
  Future<void> removeOneOfListSearchRemote(int indexOfListSearch) {
    // TODO: implement removeOneOfListSearch
    throw UnimplementedError();
  }

}
