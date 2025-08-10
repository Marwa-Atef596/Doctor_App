// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/home/data/repo/home_repo.dart';
import 'package:doctor_app/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;

  void getSpecializations() async {
    emit(HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      emit(
        HomeState.specializationsSuccess(specializationsResponseModel),
      );
    }, failure: (errorHandler) {
      emit(
        HomeState.specializationsError(errorHandler),
      );
    });
  }
}
