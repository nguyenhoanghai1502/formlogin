
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'dart:io';
import 'InputFeild.dart';
import 'TextLogin.dart';
class MyApp extends StatelessWidget{
  var logo=File('lib/img/logo.png');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(
      MaterialApp(
        title:'Login Form',
        home: Scaffold(
          backgroundColor: Color(0xff50376e),
          body: Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 150.0, bottom:0.0, right: 0.0),
            child: Center(
              child: Column(
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(bottom: 70),
                    width:150,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow:[BoxShadow(color:Color(0x30000000),spreadRadius: 4)],
                      borderRadius: BorderRadius.circular(100),
                      color:Color(0xf02c041c,
                    )
                    ),
                    child: FlutterLogo(
                    ),
                  ),
                  InputFeild(name:"Username"),
                  InputFeild(name:'Password'),
                  TextLogin(content: "Forgot your password?",),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 70),
                    child: ElevatedButton(
                        onPressed: () {  },

                        child: Text('Sign In',
                            style: TextStyle(
                              color: Color(0xfffffbff),
                              fontSize: 22,
                              fontWeight: FontWeight.w400
                            ),
                        ),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(double.infinity, 70)),
                          backgroundColor: MaterialStateProperty.all(Color(0xffff64a3)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                            )
                          ),
                      ),
                    ),
                  ),
                  TextLogin(content: "Don't have an account?",)
                ],
              )
            ),
          ),
        ),
      )
    );
  }
}