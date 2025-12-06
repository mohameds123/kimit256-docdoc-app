import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit256docdoc/core/const/api_paths.dart';
import 'package:kimit256docdoc/features/login/logic/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/models/user_model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitailState());

  Dio dio = Dio();

  Future login(UserModel user) async {
    emit(LoginLoadingState());

    try {
      final response = await dio.post(
        ApiPaths.loginUrl,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        final String token = response.data["data"]["token"];
        final String userName = response.data["data"]["username"];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("token", token);
        prefs.setString("userName", userName);
        print("USER NAME $userName");
        emit(LoginSuccessState());
      }
    } catch (e) {
      print("============= Login Error ============== $e");
      emit(LoginErrorState(
        em: e.toString(),
      ));
    }
  }
}
