import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    this.hintText
  });
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white
        ),
        //general case for the border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white)
        ),
        //enabled border and the case we see
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.white)
        )
      ),
    );
  }
}