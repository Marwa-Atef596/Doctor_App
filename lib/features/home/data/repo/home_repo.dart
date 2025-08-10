import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/home/data/api/home_api_services.dart';
import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';

class HomeRepo {
  final HomeApiServices _homeApiServices;

  HomeRepo(this._homeApiServices);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _homeApiServices.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
