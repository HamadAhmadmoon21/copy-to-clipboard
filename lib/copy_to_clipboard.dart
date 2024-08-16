import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CopyToClipboard extends StatefulWidget {
  const CopyToClipboard({super.key});

  @override
  State<CopyToClipboard> createState() => _CopyToClipboardState();
}

class _CopyToClipboardState extends State<CopyToClipboard> {
  final _copy =TextEditingController(text: "Subscribe the channel");
  @override
  Widget build(BuildContext context) {
    return   Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      controller: _copy,
      decoration:  InputDecoration(
        border:const OutlineInputBorder(),
        suffixIcon: GestureDetector(
          onTap: (){
            //for copy to clipboard ..
            //you can use as your need
            Clipboard.setData(ClipboardData(text: _copy.text));
          },
            child: Icon(Icons.copy))
      ),
    ),
    );
  }
}
