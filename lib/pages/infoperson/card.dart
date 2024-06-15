import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/pages/infoperson/avatar.dart';

class CardInfo extends StatelessWidget {
  final String name;
  final String profissional;
  final String localitazion;

  const CardInfo(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Container(
            width: 333,
            height: 526,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Avatar(
                name: name,
                profissional: profissional,
                localitazion: localitazion),
          ),
        ],
      ),
    );
  }
}
