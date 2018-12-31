import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final List<String> textoutput;

  TextOutput(this.textoutput);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: textoutput
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
