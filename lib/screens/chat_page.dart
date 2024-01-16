import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/message.dart';
import '../widgets/chat_buble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id = 'chatpage';
  //FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessageCollections);
  TextEditingController messageController = TextEditingController();
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var email=ModalRoute.of(context)!.settings.arguments ;
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy(kCreatedAt,descending: true).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            List<Message> messageList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messageList.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      kLogo,
                      height: 50,
                    ),
                    Text('chat'),
                  ],
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: kPrimaryColor,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      
                        controller: _controller,
                        itemCount: messageList.length,
                        itemBuilder: (context, index) {
                          return messageList[index].id==email? CustomBuble(message: messageList[index]):CustomBubleFromFriend(message: messageList[index]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: messageController,
                      onSubmitted: (data) {
                        messages
                            .add({kMessage: data,
                             kCreatedAt: DateTime.now(),
                             'id':email});
                        messageController.clear();
                        _controller.animateTo(
                            0,
                           duration: Duration(seconds: 2),
                            curve: Curves.fastOutSlowIn);
                        
                      },
                      decoration: InputDecoration(
                          hintText: 'Send Message',
                          suffix: Icon(
                            Icons.send,
                            color: kPrimaryColor,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(color: kPrimaryColor))),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Text('Loading....');
          }
        });
  }
}

//doc('iOM4dDJ5DobkZEtyJF8H')