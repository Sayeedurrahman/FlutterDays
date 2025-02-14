import 'package:flutter/material.dart';
import 'package:flutter_days/models/catalog.dart';
import 'package:flutter_days/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(100, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
            itemBuilder: (context, index){
              return ItemWidget(
                item: dummyList[index],
              );
            }
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
