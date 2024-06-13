import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/post/buttonpublic.dart';
import 'package:front_end_code_challenge/post/textbox.dart';

class BoxComment extends StatelessWidget {
  final String name;
  final String datehours;
  const BoxComment({super.key, required this.name, required this.datehours});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 689,
                height: 264,
                child: Stack(children: [
                  TextBox(),
                  ButtonPublic(name: name, datehours: datehours),
                ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 124, 98, 98),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
