import 'package:equatable/equatable.dart';

class Menu extends Equatable {
  final String nameOfSora;
  final String nameOfPart;
  final int numberOfPart;
  final int numberOfSora;

  const Menu(
      {required this.nameOfSora,
      required this.nameOfPart,
      required this.numberOfPart,
      required this.numberOfSora});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [nameOfSora, nameOfPart, numberOfPart, numberOfSora];
}
