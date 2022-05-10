import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failures.dart';
import '../../domin/entities/home_entities.dart';
import '../../domin/usecases/swipe_page_view_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.swipePageViewUsecase}) : super(ViewPageInitial());
  final SwipePageViewUsecase swipePageViewUsecase;
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetDataForSwipePageView) {
      //yield ViewPageStateLoading();
      final failureOrPageView = await swipePageViewUsecase(
          ParamsForSwipePageView(index: event.index));
      yield failureOrPageView.fold(
              (failure) =>
              ViewPageStateError(message: mapFailureToMessage(failure)),
              (home) => ViewPageStateLoaded(home: home));
    }
  }
  String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Server Failure Message";
      case CacheFailure:
        return "Cache Failure Message ";
      default:
        return "Unexpected errors";
    }
  }
}
