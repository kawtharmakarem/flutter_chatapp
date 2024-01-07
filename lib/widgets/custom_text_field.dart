import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    this.hintText,this.onChange
  });
  String? hintText;
  Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty){
          return 'This field is required';
        }else{
          return null;
        }
      },
      onChanged: onChange,
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