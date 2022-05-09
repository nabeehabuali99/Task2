import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_entities.dart';

abstract class HomeRepository {
  Future<Either<Failure, Home>> pageViewSwipe(int index);
}