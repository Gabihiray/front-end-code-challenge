import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/infoperson/buttonedit.dart';
import 'package:front_end_code_challenge/infoperson/infoperson.dart';
import 'package:front_end_code_challenge/infoperson/tableinfo.dart';

class Avatar extends StatelessWidget {
  final String name;
  final String profissional;
  final String localitazion;
  const Avatar(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SizedBox(
            width: 150,
            height: 150,
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ),
        InfoPerson(
            name: name, profissional: profissional, localitazion: localitazion),
        ButtonEdit(),
        TableInfo()
      ],
    );
  }
}
