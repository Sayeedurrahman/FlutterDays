import 'package:flutter/material.dart';
import 'package:flutter_days/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
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
