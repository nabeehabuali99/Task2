import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_design2/core/error/failures.dart';
import 'package:task_design2/core/usecases/usecase.dart';
import 'package:task_design2/features/home/domin/entities/home_entities.dart';

import '../repository/home_repository.dart';

class SwipePageViewUsecase extends UseCase<Home, ParamsForSwipePageView> {
  final HomeRepository repository;

  SwipePageViewUsecase(this.repository);

  @override
  Future<Either<Failure, Home>> call(ParamsForSwipePageView params) async  {
   return   await repository.pageViewSwipe(params.index);
  }
}

class ParamsForSwipePageView extends Equatable {
  final int index;

  const ParamsForSwipePageView({required this.index});

  @override
  // TODO: implement props
  List<Object?> get props => [index];
}
