import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputFeild extends StatelessWidget{
  var name;
  InputFeild({this.name});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color:Color(0x80000000)
          ),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            cursorColor: Color(0x33ffffff),
            cursorHeight: 30,
            showCursor: false,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                ),
                border: InputBorder.none ,
                hintText: "${this.name}",
                hintStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0x99ffffff)
                )
            ),
          ),
        ));
  }
}