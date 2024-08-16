import 'package:flutter/material.dart';
import 'package:football/copy_to_clipboard.dart';
import 'package:football/past_the_clipboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title:const Text("CopyToClipboard",style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
      ),

      body:const Column(
        children: [
          SizedBox(height: 80,),
          CopyToClipboard(),
          SizedBox(height: 30,),
          PastTheClipboard()
        ],
      ),

    );
  }
}
