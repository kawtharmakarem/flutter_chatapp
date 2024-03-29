import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/message.dart';

import '../constants.dart';

class CustomBuble extends StatelessWidget {
  const CustomBuble({
    super.key, required this.message,
  });
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
        
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomRight: Radius.circular(32))),
        child: Text(
                  message.message,
                  style: TextStyle(color: Colors.white),
                ),
      ),
    );
  }
}


class CustomBubleFromFriend extends StatelessWidget {
  const CustomBubleFromFriend({
    super.key, required this.message,
  });
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
        
        decoration: BoxDecoration(
            color: Color(0xff006d84),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32))),
        child: Text(
                  message.message,
                  style: TextStyle(color: Colors.white),
                ),
      ),
    );
  }
}
