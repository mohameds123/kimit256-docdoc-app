import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit256docdoc/core/const/api_paths.dart';
import 'package:kimit256docdoc/features/sign_up/logic/states.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        final String token = response.data["data"]["token"];
        final String userName = response.data["data"]["username"];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("token", token);
        prefs.setString("userName", userName);
        print("USER NAME $userName");


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
