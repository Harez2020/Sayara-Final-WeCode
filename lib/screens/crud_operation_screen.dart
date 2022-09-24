import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CrudOperations extends StatelessWidget {
  CrudOperations({Key? key}) : super(key: key);

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
            child: Column(
          children: [
            const Text('hello'),
            ElevatedButton(
                onPressed: () {
                  addANameToTheDB();
                },
                child: const Text('Add Data'))
          ],
        )),
        // ignore: dead_code
      ),
    );
  }

  addANameToTheDB() {
    _firebaseFirestore.collection('names').add({"first_name": "Harez"});
  }
}
