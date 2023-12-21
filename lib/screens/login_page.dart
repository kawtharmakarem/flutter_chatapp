import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b475e),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
           children: [
            Spacer(flex: 2,),
            Image.asset('assets/images/scholar.png'),
            Text('Scholar Chat',style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Pacifico'
        
            ),),
            Spacer(flex: 2,),
            Row(
              children: [
                Text('SignIn',style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                        
                ),),
              ],
            ),
            const SizedBox(height: 10,),
            CustomTextField(hintText: 'Email',),
            const SizedBox(height: 10,),
            CustomTextField(hintText: 'Password',),
            const SizedBox(height: 20,),
            CustomButton(),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('don\'t have an account ? ',style: TextStyle(color: Colors.white),),
              Text('Register',style: TextStyle(color: Color(0xffc7ede6)),)
            ],),
            Spacer(flex: 3,)
        
           ],
        ),
      ),
    );
  }
}



