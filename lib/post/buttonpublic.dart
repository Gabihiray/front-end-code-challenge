import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/publication/boxpublication.dart';

class ButtonPublic extends StatefulWidget {
  final String name;
  final String datehours;
  const ButtonPublic({super.key, required this.name, required this.datehours});

  @override
  State<ButtonPublic> createState() => _ButtonPublicState();
}

class _ButtonPublicState extends State<ButtonPublic> {
  List<Widget> cardList = [];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 25.5, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 110,
                color: Colors.black26,
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        cardList.add(const BoxPublication());
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
      ),
      SingleChildScrollView(
          child: Center(
        child: Column(children: cardList),
      ))
    ]);
  }
}
