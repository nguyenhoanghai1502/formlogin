import 'package:flutter/cupertino.dart';

class TextLogin extends StatelessWidget{
  var content;
  TextLogin({this.content});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
        Text(
          "${this.content}",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 16, color: Color(0xfffffbff)),
        )
    );
  }
}