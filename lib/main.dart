import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_end_code_challenge/pages/infoperson/card.dart';
import 'package:front_end_code_challenge/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Origam Sistemas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        name: 'Jane Cooper',
        profissional: 'Front-end Developer',
        localitazion: 'São Roque, São Paulo',
        datehours: '1h atrás',
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key,
      required this.name,
      required this.profissional,
      required this.localitazion,
      required this.datehours,
      required this.title});

  final String name;
  final String profissional;
  final String localitazion;
  final String datehours;
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(76.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: SvgPicture.asset(
                  'assets/images/logo.svg',
                )),
              ],
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            leadingWidth: 1050,
          ),
        ),
        body: Dashboard(
          name: widget.name,
          profissional: widget.profissional,
          localitazion: widget.localitazion,
          datehours: widget.datehours,
          title: widget.title,
        ));
  }
}
