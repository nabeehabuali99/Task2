part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable{}






class GetDataForSwipePageView extends HomeEvent{
  final int index;

  GetDataForSwipePageView( {required this.index}  );

  @override
  List<Object?> get props => [index];


}
