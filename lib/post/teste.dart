import 'package:flutter/material.dart';
import 'package:front_end_code_challenge/publication/boxpublication.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
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

class BoxPublication extends StatelessWidget {
  const BoxPublication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            child: Stack(children: [
      Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(bottom: 520, right: 910),
          child: Text('Minhas publicações',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      Container(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 398.0, bottom: 230.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 689,
                  height: 264,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 124, 98, 98),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar.png'),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text('Jane cooper'),
                                          Text('1 hora'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 420.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      PopupMenuButton(
                                          onSelected: handleClick,
                                          itemBuilder: (BuildContext context) {
                                            return {
                                              'Editar publicação',
                                              'Delete publicação',
                                            }.map((String choice) {
                                              return PopupMenuItem<String>(
                                                value: choice,
                                                child: Text(choice),
                                              );
                                            }).toList();
                                          },
                                          child: Icon(Icons.more_vert)),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ]),
                )
              ]),
        ),
      ),
    ])));
  }
}

void handleClick(String value) {
  switch (value) {
    case 'Edit':
      break;
    case 'Delete':
      break;
  }
}
