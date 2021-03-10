import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// made a class for displaying list of recent weight inputs

class RecentMeasurement {
  Widget buildList(QuerySnapshot snapshot) {
    return ListView.builder(
      reverse: false,
      itemCount: snapshot.docs.length, // getting the length of the collection
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
          }, // deleting an item from collection with swipe left/right
          child: ListTile(
            title: Expanded(
              child: Card(
                margin: EdgeInsets.only(top: 25.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Current Weight: ' + doc['weight'] + 'kg',
                      style: TextStyle(
                        color: Colors.green[900],
                      ),
                    ),
                    Text(
                      'Time added: ' + doc['time'].toString(),
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
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
