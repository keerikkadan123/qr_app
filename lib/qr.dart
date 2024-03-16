import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_page/loginpage.dart';
import 'package:qr_page/pic.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZlAcC_1n7gulS21qRrKRo-FYLW4xLt9y2eA&usqp=CAU"),
            SizedBox(height: 30),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: (){
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => const  Pic ()),
    );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.teal),
              child: Text(
                'scan',
                style: TextStyle(color: Colors.lightGreen),
              ),
            ),
        ],
            ),
        ),
      );
  }
}



