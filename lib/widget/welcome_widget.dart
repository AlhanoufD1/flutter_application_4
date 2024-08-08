// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/screen/login_screen.dart';


class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: Color.fromARGB(255, 228, 239, 228),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/first2.jpg',
                  height: 250, fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height:6,
          ),
          Text(
            "تبرع الآن!",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  255,
                  36,
                  83,
                  38,
                ),
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "السر في العطاء لا يكمن في مجرد العطاء فحسب، بل في إحساسك بأنّك تتحول إلى شخصٍ أفضل.",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          InkWell(
            onTap: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login() ));

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(
                  255,
                  36,
                  83,
                  38,
                ),
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
               BoxShadow(
               color: Colors.black,
               blurRadius: 10,
               offset: Offset(0, 6),

               ),

                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سجل دخولك",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
