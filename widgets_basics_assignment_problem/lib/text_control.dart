import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  List<String> _text = [''];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
            onPressed: () {
              setState(() {
                _text.add('Added text');
              });
            },
            child: Text('Add text')),
      ),
      TextOutput(_text)
    ]);
  }
}
