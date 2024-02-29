import 'package:chat_app_task/domain/models/message.dart';
import 'package:chat_app_task/logic/cubits/inbox_cubit.dart';
import 'package:chat_app_task/logic/states/inbox_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  TextEditingController textController = TextEditingController();

  bool dialogShowed = false;

  @override
  Widget build(BuildContext context) {
    String? userName;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      userName = prefs.getString('userName');


      if ( userName==null && mounted && !dialogShowed) {

        dialogShowed = true;
        showGeneralDialog(
          context: context,
          barrierLabel: "Barrier",
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          transitionDuration: const Duration(milliseconds: 700),
          pageBuilder: (_, __, ___) {

            TextEditingController nameController = TextEditingController();

            return Center(
              child: Material(
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width-20,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                hintText: "Enter Your Name...",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if(nameController.text.isNotEmpty){
                          await prefs.setString('userName', nameController.text);
                          if (mounted){
                            Navigator.pop(context);
                          }
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: const Icon(
                            Icons.send,
                            color: Colors.lightBlue,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          transitionBuilder: (_, anim, __, child) {
            Tween<Offset> tween;
            if (anim.status == AnimationStatus.reverse) {
              tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
            } else {
              tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
            }

            return SlideTransition(
              position: tween.animate(anim),
              child: FadeTransition(
                opacity: anim,
                child: child,
              ),
            );
          },
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.lightBlue,
        ),
        title: const Text("Chatting"),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 70),
            child: BlocConsumer<InboxCubit, InboxState>(
              listener: (context, state) async {
                if (state is InboxFailedState) {
                  var snackBar = SnackBar(content: Text(state.errorMessage));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              builder: (context, state) {
                final Stream<QuerySnapshot> _usersStream = FirebaseFirestore
                    .instance
                    .collection('messages')
                    .orderBy(
                      'mills', descending: true
                    ).snapshots();
            
                return StreamBuilder<QuerySnapshot>(
                  stream: _usersStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }
                    return Stack(
                      children: [
                        if (snapshot.data != null)
                          ListView(
                            reverse: true,
                          
                            shrinkWrap: true,
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                              Map<String, dynamic> data =
                                  document.data()! as Map<String, dynamic>;
                                  
                              return Row(
                                mainAxisAlignment: (userName!=null && userName == data['senderId'])? MainAxisAlignment.end: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: (userName!=null && userName == data['senderId'])? Colors.lightBlue.shade100 : Colors.grey.shade200),
                                    child: Text(data['message']),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        if (snapshot.connectionState == ConnectionState.waiting)
                          const Center(child: CircularProgressIndicator())
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    if (textController.text.isNotEmpty) {

                      var now = new DateTime.now();
                        var formatter = new DateFormat('dd:MM:yy');
                        String formattedDate = formatter.format(now);
                          Message message = Message(
                          id: "",
                          senderId: userName!,
                          message: textController.text,
                          time: formattedDate,
                          mills: now.millisecondsSinceEpoch);
                      context.read<InboxCubit>().sendMessage(message);
                      textController.text = "";
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: const Icon(
                      Icons.send,
                      color: Colors.lightBlue,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
