import 'package:flutter/material.dart';
import 'package:sayaranew/screens/crud_operation_screen.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CrudOperations(),
    );
  }
}
