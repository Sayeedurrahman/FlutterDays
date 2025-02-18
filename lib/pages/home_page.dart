import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_days/models/catalog.dart';
import 'package:flutter_days/widgets/drawer.dart';
import 'dart:convert';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData()async{
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
}

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(100, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16
            ),
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index){
              final item = CatalogModel.items[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: GridTile(
                  header: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      child: Text(item.name, style: TextStyle(color: Colors.white),),
                  ),
                  footer: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      "\$${item.price.toString()}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  child: Image.network(item.image),
                )
              );
            }
        )

        // ListView.builder(
        //   itemCount: CatalogModel.items.length,
        //     itemBuilder: (context, index){
        //       return ItemWidget(
        //         item: CatalogModel.items[index],
        //       );
        //     }
        // )
        : Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}
