import '../data/home_model.dart';

class HomeStates {}

class HomeInitialState extends HomeStates{}
class HomeLoadingState extends HomeStates{}
class HomeSuccessState extends HomeStates{
  HomeModel homeModel;
  HomeSuccessState ({required this.homeModel});
}
class HomeErrorState extends HomeStates{
  final String errorMessage;
  HomeErrorState({required this.errorMessage});
}