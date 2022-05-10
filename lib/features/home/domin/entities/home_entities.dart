import 'package:equatable/equatable.dart';

class Home extends Equatable {
  final String nameOfSora;
  final String partOfSora;
  final int numberOfPage;
  final String imageOfSora;

  const Home(
      {required this.nameOfSora,
      required this.partOfSora,
      required this.numberOfPage,
      required this.imageOfSora});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [nameOfSora, partOfSora, numberOfPage, imageOfSora];
}
