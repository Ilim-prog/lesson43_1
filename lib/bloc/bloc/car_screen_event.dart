part of 'car_screen_bloc.dart';

@immutable
abstract class CarScreenEvent {}

class CarInfoEvent extends CarScreenEvent {
  final String name;

  CarInfoEvent({required this.name});
}
