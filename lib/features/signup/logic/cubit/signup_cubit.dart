// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(SignupState.loading());
    final response = await _signupRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );

    response.when(success: (signUpResponse) {
      emit(SignupState.success(signUpResponse));
    }, failure: (error) {
      emit(
        SignupState.error(error: error.apiErrorModel.message ?? ''),
      );
    });
  }
}
