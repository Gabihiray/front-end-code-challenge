import 'package:flutter/material.dart';

class ButtonEdit extends StatelessWidget {
  const ButtonEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF717806),
              ),
              borderRadius: BorderRadius.all(Radius.circular(3))),
          child: OutlinedButton(
            onPressed: () {},
            child: SizedBox(
              height: 40,
              width: 250,
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                      child: Icon(Icons.edit_outlined,
                          color: Color(0xFF717806), size: 20),
                    ),
                    TextSpan(
                      text: 'Editar perfil',
                      style: TextStyle(
                        color: Color(0xFF717806),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
