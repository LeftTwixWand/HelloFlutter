import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressedHandler;
  final String _answerText;

  Answer(this._answerText, this._onPressedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: _onPressedHandler,
      ),
    );
  }
}
