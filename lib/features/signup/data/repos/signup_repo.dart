import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/signup/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiServices _apiServices;

  SignupRepo(this._apiServices);
  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiServices.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
