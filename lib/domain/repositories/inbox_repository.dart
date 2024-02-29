import 'package:chat_app_task/domain/api/client/api_client.dart';
import 'package:chat_app_task/domain/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InboxRepository{

  ApiClient apiClient = ApiClient();


  Future<String> sendMessage(Message message) async{
    print("sendMessage called 2");
    String responseMessage = "";
    await apiClient.getMessageCollection.add(message.toJson())
         .then((value) => responseMessage = "Message Send Successfully!")
        .catchError((error) => throw error);
        return responseMessage;
  }

  Stream<QuerySnapshot> getMessages() {
    try {
      return  apiClient.getMessageCollection.orderBy(
        'mills', descending: true
      ).snapshots();
    } catch (e) {
      rethrow;
    }
  }
}