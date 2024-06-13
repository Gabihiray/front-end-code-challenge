import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/infoperson/card.dart';
import 'package:front_end_code_challenge/post/box.dart';
import 'package:front_end_code_challenge/publication/boxpublication.dart';

class Dashboard extends StatelessWidget {
  final String name;
  final String profissional;
  final String localitazion;
  final String datehours;
  const Dashboard(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion,
      required this.datehours});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardInfo(
          name: name,
          profissional: profissional,
          localitazion: localitazion,
        ),
        BoxComment(
          name: name,
          datehours: datehours,
        ),
        BoxPublication()
      ],
    );
  }
}
