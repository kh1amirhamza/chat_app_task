import 'package:chat_app_task/logic/cubits/inbox_cubit.dart';
import 'package:chat_app_task/presentation/home/home_page.dart';
import 'package:chat_app_task/presentation/inbox/chatting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/home_cubit.dart';

class Routes{
  static Route? onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      
      case "/chat": 
      //Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context)=> BlocProvider(
          create: (context)=> InboxCubit(),
          child:  
          ChattingPage(),
          ));
          break;
      default: null;
    }
  }
}