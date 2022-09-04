part of 'car_screen_bloc.dart';

@immutable
abstract class CarScreenState {}

class CarScreenInitial extends CarScreenState {}

class CarLoadingState extends CarScreenState {}

class CarLoadedState extends CarScreenState {
  final List<CarModel> carsModelList;

  CarLoadedState({required this.carsModelList});
}

class CarErrorState extends CarScreenState {}
