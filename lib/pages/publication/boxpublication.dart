import 'package:flutter/material.dart';

class BoxPublication extends StatelessWidget {
  final String name;
  final String datehours;
  final String title;
  const BoxPublication(
      {super.key,
      required this.name,
      required this.datehours,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(top: 20),
                child: Text('Minhas publicações',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  width: 689,
                  height: 264,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(name),
                                  Text(datehours),
                                ],
                              ),
                            ),
                            Spacer(),
                            PopupMenuButton<String>(
                              onSelected: handleClick,
                              itemBuilder: (BuildContext context) {
                                return {
                                  'Editar publicação',
                                  'Delete publicação'
                                }.map((String choice) {
                                  return PopupMenuItem<String>(
                                    value: choice,
                                    child: Text(choice),
                                  );
                                }).toList();
                              },
                              child: Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                        Text(title) // Colocar o texto aqui
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Editar publicação':
        break;
      case 'Delete publicação':
        break;
    }
  }
}
