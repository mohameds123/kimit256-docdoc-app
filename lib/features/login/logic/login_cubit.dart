import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit256docdoc/core/const/api_paths.dart';
import 'package:kimit256docdoc/features/login/data/login_model.dart';
import 'package:kimit256docdoc/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitailState());

  Dio dio = Dio();

  Future login(LoginModel loginModel) async {
    emit(LoginLoadingState());

    try {
      final response = await dio.post(
        ApiPaths.loginUrl,
        data: loginModel.toJson(),
      );
      if (response.statusCode == 200) {
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
