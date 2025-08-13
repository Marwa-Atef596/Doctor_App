// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/helper/extension.dart';
import 'package:doctor_app/features/home/data/repo/home_repo.dart';
import 'package:doctor_app/features/home/logic/cubit/home_state.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/model/specializations_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;
  List<SpecializationsData?>? specializationsList = [];
  void getSpecializations() async {
    emit(HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationsList?.first?.id);
      emit(
        HomeState.specializationsSuccess(specializationsList),
      );
    }, failure: (errorHandler) {
      emit(
        HomeState.specializationsError(errorHandler),
      );
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
