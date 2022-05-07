import 'package:flutter/cupertino.dart';

class IRepository {
  Future<int> getMovieNumber() async {
    return 1;
  }
}

class HomeController extends ValueNotifier<HomeState> {
  final repository = IRepository();

  HomeController() : super(HomeLoading());

  Future<void> getMovies() async {
    value = HomeLoading();

    repository.getMovieNumber().then((intMovie) {
      value = HomeLoaded(intMovie: intMovie);
    }).onError((error, stackTrace) {
      if (error is Exception) {
        value = HomeError(errorMessage: error.toString());
        return;
      }
      value = HomeError(errorMessage: error.toString());
    });
  }
}

abstract class HomeState {}

class HomeLoading implements HomeState {}

class HomeLoaded implements HomeState {
  final int intMovie;

  HomeLoaded({required this.intMovie});
}

class HomeError implements HomeState {
  final String errorMessage;

  HomeError({required this.errorMessage});
}
