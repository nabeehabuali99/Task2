part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class ViewPageInitial extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class ViewPageStateLoading extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
class ViewPageStateLoaded extends HomeState {
  final Home home;

  ViewPageStateLoaded(this.home);

  @override
  // TODO: implement props
  List<Object?> get props => [home];
}
class ViewPageStateError extends HomeState {
  final String message;

  ViewPageStateError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props =>  [message];
}