import 'package:chat_app_task/domain/models/message.dart';
import 'package:chat_app_task/domain/repositories/inbox_repository.dart';
import 'package:chat_app_task/logic/states/inbox_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InboxCubit extends Cubit<InboxState>{

InboxCubit(): super(InboxInitialState()){
  //getMessage();
}

InboxRepository inboxRepository = InboxRepository();
  
  
  void sendMessage(Message message) async {
    print("sendMessage called 1");
    try {
      emit(InboxLoadingState());
      String response = await inboxRepository.sendMessage(message);
    } catch (e) {
      emit(InboxFailedState(e.toString()));
    }
  }

    void getMessage() async {
    try {
      emit(InboxLoadingState());
       Stream<QuerySnapshot> response = await inboxRepository.getMessages();
       emit(InboxNewMessageState(response));
    } catch (e) {
      emit(InboxFailedState(e.toString()));
    }
  }

}