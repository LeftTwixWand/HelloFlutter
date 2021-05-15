import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressedHandler;
  final String _answerText;

  Answer(this._answerText, this._onPressedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(_answerText),
        onPressed: _onPressedHandler,
      ),
    );
  }
}
