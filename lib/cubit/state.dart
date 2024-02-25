part of 'cubit.dart';

@immutable
abstract class NewsState {}

class NewsAppInitialState extends NewsState {}

class NewsChangeBNBState extends NewsState {}

class NewsGetLoadDataState extends NewsState {}

class NewsGetDataState extends NewsState {}
class NewsSwitchDarkModeState extends NewsState {}

class NewsGetDataErrorState extends NewsState {
  final error;
  NewsGetDataErrorState({required this.error});
}


