import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimit256docdoc/core/const/api_paths.dart';
import 'package:kimit256docdoc/features/home/data/home_model.dart';
import 'package:kimit256docdoc/features/home/logic/state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit () : super (HomeInitialState());
  Dio dio = Dio();
  
  Future getHomeData ()async{
    emit(HomeLoadingState());
    try{
      // Get token from shared preferences
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString("token") ?? "";

      final response = await dio.get(
        ApiPaths.homeUrl,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      if (response.statusCode == 200){
        final data = HomeModel.fromJson(response.data);
        emit(HomeSuccessState(homeModel: data));
      }
      
    }catch (e) {
      emit(HomeErrorState(errorMessage: e.toString()));
    }
  }
}