import 'package:flutter/material.dart';
import 'package:futsalapp/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff41965F),
      body: Column(
        children: [
          Image.asset('lib/assets/logo/logo2.png'),
          Text('Sign in to Futsal'),
          MyTextField(hintText: 'username', prefixIcon: Icons.login),
          MyTextField(
            hintText: 'password',
            prefixIcon: Icons.password,
            isPassword: true,
          )
        ],
      ),
    );
  }
}
