import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/pages/publication/boxpublication.dart';
import 'package:front_end_code_challenge/services/social_services.dart';

class ButtonPublic extends StatefulWidget {
  final String name;
  final String datehours;
  final Function addCard;
  final String title;
  ButtonPublic(
      {super.key,
      required this.name,
      required this.datehours,
      required this.title,
      required this.addCard});

  SocialService service = SocialService();

  @override
  State<ButtonPublic> createState() => _ButtonPublicState();
}

class _ButtonPublicState extends State<ButtonPublic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26.0),
      child: Container(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colors.black26),
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      widget.addCard(BoxPublication(
                        name: widget.name,
                        datehours: widget.datehours,
                        title: widget.title,
                      ));
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Publicar',
                      style: TextStyle(color: Colors.black38),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
