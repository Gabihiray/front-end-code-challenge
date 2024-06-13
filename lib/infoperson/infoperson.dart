import 'package:flutter/material.dart';

class InfoPerson extends StatelessWidget {
  final String name;
  final String profissional;
  final String localitazion;

  const InfoPerson(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: Container(
          child: Text(name),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(child: Text(profissional)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.location_on_outlined),
              ),
              TextSpan(
                text: localitazion,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
