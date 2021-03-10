import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RecentMeasurement {
  Widget buildList(QuerySnapshot snapshot) {
    return ListView.builder(
      reverse: false,
      itemCount: snapshot.docs.length,
      itemBuilder: (context, index) {
        final doc = snapshot.docs[index];
        return Dismissible(
          background: Container(color: Colors.red),
          key: Key(doc.id),
          onDismissed: (direction) {
            FirebaseFirestore.instance
                .collection('weightMeasurement')
                .doc(doc.id)
                .delete();
          },
          child: ListTile(
            title: Expanded(
              child: Card(
                margin: EdgeInsets.only(top: 25.0),
                child: Column(
                  children: <Widget>[
                    Text('Current Weight: ' + doc['weight'] + 'kg'),
                    Text('Time added: ' + doc['time'].toString()),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
