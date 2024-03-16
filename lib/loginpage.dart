import 'package:flutter/material.dart';
import 'package:qr_page/qr.dart';
import 'package:qr_page/reg.dart';

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
    TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => const  Qr ()),
      );
    },
    style: TextButton.styleFrom(backgroundColor: Colors.red),
    child: Text('Login',style: TextStyle(color: Colors.white60,fontSize: 20),),),
        SizedBox(height: 20),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const  Reg ()));
        },
          style: TextButton.styleFrom(backgroundColor: Colors.red),
          child: Text('Not login?',style: TextStyle(color: Colors.white60,fontSize: 20),),),
        ],
      ),
    ),


    );
  }
}
