import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final _rolNoController = TextEditingController();
  final _nameNoController = TextEditingController();
  final _emailNoController = TextEditingController();
  final _passwordNoController = TextEditingController();


Future<void> register() async {
  Uri uri = Uri.parse('url');
  var response = await http.post(uri,
    headers: <String,String>{
    'Content-Type':'application/json; charset=UTF-8'
  },
    body: jsonEncode({
      'name':_nameNoController.text,
      'email':_emailNoController.text,
      'rollno':_rolNoController.text,
      'password':_passwordNoController.text,
    }));

  var data = jsonDecode(response.body);
  print(data["message"]);
  if(response.statusCode==200);
  else{
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Registration Failed")));
  {
  }
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registration',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Container(
            width: 250,
            child: TextField(
              controller: _nameNoController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 250,
            child: TextField(
              controller: _rolNoController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your roll no',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 20),
          Container(
              width: 250,
              child: TextField(
                controller: _emailNoController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email'))),
          SizedBox(height: 20),
          Container(
            width: 250,
            child: TextField(
              controller: _passwordNoController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height:20),
          TextButton(
            onPressed: () {
              print(_nameNoController.text);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Reg()));
            },
            style: TextButton.styleFrom(backgroundColor: Colors.tealAccent),
            child: Text('register'),
          ),
        ],
      )),
    );
  }
}
