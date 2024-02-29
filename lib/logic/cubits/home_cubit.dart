import 'package:chat_app_task/logic/states/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit(): super(HomeInitialState());
}