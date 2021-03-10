import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:weight_tracker/screens/home/form.dart';
import 'package:weight_tracker/screens/home/measurements.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: <Widget>[
          FormText(),
          StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('weightMeasurement')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return LinearProgressIndicator();
                return Expanded(
                  child: RecentMeasurement().buildList(snapshot.data),
                );
              }),
        ],
      ),
    );
  }
}
