import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/pages/post/buttonpublic.dart';
import 'package:front_end_code_challenge/pages/post/textbox.dart';

class BoxComment extends StatelessWidget {
  final String name;
  final String datehours;
  final String title;
  final Function addCard;
  const BoxComment({
    super.key,
    required this.name,
    required this.datehours,
    required this.title,
    required this.addCard,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 689,
                height: 264,
                child: Column(children: [
                  TextBox(title: title),
                  ButtonPublic(
                      name: name,
                      datehours: datehours,
                      addCard: addCard,
                      title: title),
                ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
