import 'package:flutter/material.dart';

class TableInfo extends StatelessWidget {
  const TableInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(282.0),
      border: TableBorder.all(
          color: Color(0xFFE1E5EA), borderRadius: BorderRadius.circular(3)),
      children: [
        TableRow(children: [
          Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Portfólio',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    RichText(
                        text: WidgetSpan(
                      child: Icon(Icons.open_in_new),
                    )),
                  ],
                ),
              ))
        ]),
        TableRow(children: [
          Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'LinkedIn',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    RichText(
                        text: WidgetSpan(
                      child: Icon(Icons.open_in_new),
                    )),
                  ],
                ),
              ))
        ]),
        TableRow(children: [
          Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Instagram',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    RichText(
                        text: WidgetSpan(
                      child: Icon(Icons.open_in_new),
                    )),
                  ],
                ),
              ))
        ]),
      ],
    );
  }
}
