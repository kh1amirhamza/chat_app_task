import 'package:cloud_firestore/cloud_firestore.dart';

class ApiClient{

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseFirestore get getFirestoreInstance => firestore;

  Stream<QuerySnapshot> getUsersCollenctionStream = FirebaseFirestore.instance.collection('users').snapshots();
  // Stream get getDocumentStream => firestore.collection('users').doc('ABC123').snapshots();
   CollectionReference get getUserCollection => firestore.collection('users');
   CollectionReference get getMessageCollection => firestore.collection('messages');


}