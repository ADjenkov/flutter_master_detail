import 'package:flutter_master_detail/item.dart';
import 'package:flutter_master_detail/item_details.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    @required this.itemSelectedCallback,
    this.selectedItem,
  });

  final ValueChanged<Item> itemSelectedCallback;
  final Item selectedItem;

  @override
  Widget build(BuildContext context) {
    
    return new ListView(
      children:
       items.map((item) {
         return new Container(
           padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
           child: new Row(
             children: <Widget>[
               new Expanded(
                 child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Text(
                        item.name,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 83, 255),
                          //color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                ),
                new Text('€' + item.price.toString() + '/day'),
              ]
             ),
         );
        // return new ListTile(
        //   title: new Text(item.name),
        //   onTap: () => itemSelectedCallback(item),
        //   selected: selectedItem == item,
        // );
      }).toList(),
    );
  }
}
