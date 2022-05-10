import '../../../../core/Constants/PathImageConstants.dart';
import '../../../../core/error/exceptions.dart';
import '../model/home model.dart';

abstract class HomeLocalDataSource {
  Future<HomeModel> getDataFromIndex(int index);
}
class HomeLocalDataSourceImplementation implements HomeLocalDataSource {
  @override
  Future<HomeModel> getDataFromIndex(index) {
    try {
      final data = PathConstants.informationOfPages;
      return Future.value(HomeModel.fromJson(data[index]));
    } catch (e) {
      throw CacheException();
    }
  }
}