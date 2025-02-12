import 'package:flutter/material.dart';
import 'package:flutter_days/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: Center(
          child: Text(
              'Welcome to the HomePage'
          )
      ),
      drawer: MyDrawer(),
    );
  }
}
