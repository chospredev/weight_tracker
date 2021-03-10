import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormText extends StatelessWidget {
  final String _labelText = 'Enter your weight..';
  final String _buttonText = 'Save';

  final _controller = TextEditingController();

  final dateFormat = new DateFormat.yMMMMd().add_jm();

  final _collection =
      FirebaseFirestore.instance.collection('weightMeasurement');

  void saveItemToList() {
    final weight = _controller.text;

    if (weight.isNotEmpty) {
      _collection.add({
        'weight': weight,
        'time': dateFormat.format(DateTime.now()),
      });
    } else {
      return null;
    }

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            keyboardType: TextInputType.number,
            controller: _controller,
            decoration: InputDecoration(
              labelText: _labelText,
            ),
          ),
        ),
        FlatButton(
          color: Colors.blue,
          onPressed: saveItemToList,
          child: Text(
            _buttonText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
