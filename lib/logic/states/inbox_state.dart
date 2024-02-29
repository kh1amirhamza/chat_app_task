
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class InboxState{}

class InboxInitialState extends InboxState{
}

class InboxLoadingState extends InboxState{
}


class InboxSendMessageState extends InboxState{
  String message;
  InboxSendMessageState(this.message);
}

class InboxNewMessageState extends InboxState{
  Stream<QuerySnapshot> querySnapshot;
  InboxNewMessageState(this.querySnapshot);
}


class InboxFailedState extends InboxState{
  String errorMessage;
  InboxFailedState(this.errorMessage);
}