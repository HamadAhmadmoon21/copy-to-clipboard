import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PastTheClipboard extends StatefulWidget {
  const PastTheClipboard({super.key});

  @override
  State<PastTheClipboard> createState() => _PastTheClipboardState();
}

class _PastTheClipboardState extends State<PastTheClipboard> {
  TextEditingController _past=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      controller: _past,
      decoration: InputDecoration(
        border:const OutlineInputBorder(),
        suffixIcon:GestureDetector(
          onTap: (){

            Clipboard.getData("text/plain").then((value) {
              if(value!=null){
                _past.text=value.text!;
              }
            });
          },
          child:const Icon(Icons.paste) ,
        )

      ),
    ),
    );
  }
}
