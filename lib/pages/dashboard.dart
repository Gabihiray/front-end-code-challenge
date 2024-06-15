import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/pages/infoperson/card.dart';
import 'package:front_end_code_challenge/pages/post/box.dart';
import 'package:front_end_code_challenge/pages/publication/boxpublication.dart';

class Dashboard extends StatefulWidget {
  final String name;
  final String profissional;
  final String localitazion;
  final String datehours;
  final String title;
  const Dashboard(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion,
      required this.datehours,
      required this.title});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> cardList = [];

  void addCard(Widget card) {
    setState(() {
      cardList.add(BoxPublication(
        name: widget.name,
        datehours: widget.datehours,
        title: widget.title,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CardInfo(
            name: widget.name,
            profissional: widget.profissional,
            localitazion: widget.localitazion,
          ),
          SizedBox(
            width: 20,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            BoxComment(
              name: widget.name,
              datehours: widget.datehours,
              addCard: addCard,
              title: widget.title,
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(children: cardList),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
