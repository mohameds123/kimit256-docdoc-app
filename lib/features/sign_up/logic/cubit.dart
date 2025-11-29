import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit256docdoc/core/const/api_paths.dart';
import 'package:kimit256docdoc/features/sign_up/logic/states.dart';

import '../../../core/models/user_model.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitailState());

  Dio dio = Dio();

  Future signUp(UserModel user) async {
    emit(SignUpLoadingState());

    try {
      final response = await dio.post(
        ApiPaths.signUpUrl,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        emit(SignUpSuccessState());
      }
    } catch (e) {
      print("============= SignUp Error ============== $e");
      emit(SignUpErrorState(
        em: e.toString(),
      ));
    }
  }
}
