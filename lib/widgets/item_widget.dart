import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image, width:80,height: 80,),
        title: Text(item.name,style: TextStyle(color: Colors.red),),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",textScaler: TextScaler.linear(1.5), style: TextStyle(color: Colors.deepPurple.shade600)),
      ),
    );
  }
}
