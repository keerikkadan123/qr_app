import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Container(

            width: 250,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Roll No',
                hintStyle: TextStyle(color:Colors.white )
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                  hintStyle: TextStyle(color:Colors.white )
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(onPressed: null, child: Text('Login',style: TextStyle(color:Colors.white),),
          style: TextButton.styleFrom(backgroundColor: Colors.tealAccent),
            ),
        ],
      )),
    );
  }
}
