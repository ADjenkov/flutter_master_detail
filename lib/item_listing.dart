import 'package:flutter_master_detail/item.dart';
import 'package:flutter_master_detail/item_details.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      children: items.map((item) {
        return new GestureDetector(
          onTap: () => itemSelectedCallback(item),
          child: new Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            margin: const EdgeInsets.only(top: 12.0),
            child: Column(children: [
              _buildPriceRow(item),
              new Divider(height: 1.00,color: Colors.black12),
              _buildDetailsRaw(item)
            ])
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

  Row _buildPriceRow(item) {
    return new Row(children: <Widget>[
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
            ]);
  }

  Row _buildDetailsRaw(item) {
    return new Row(children: <Widget>[
              new Image.network(
                item.imageUrl,
                width: 200.0
              ),
               new Container(
                height: 100.0,
                child: _buildIconColumn()),
              new Container(
                height: 100.0,
                child: new Padding(
                  padding: new EdgeInsets.only(left: 20.0),
                  child: _buildInfoColumn(item),
                )
              )
            ]);
  }

  Column _buildIconColumn() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Icon(FontAwesomeIcons.car, size: 20.0, color: Colors.lightBlue,),
        new Icon(FontAwesomeIcons.gears, size: 20.0, color: Colors.lightBlue),
        new Icon(FontAwesomeIcons.snowflakeO, size: 20.0, color: Colors.lightBlue)
      ],
    );
  }

  Column _buildInfoColumn(item) {
    var hasAc = item.hasAC ? "Yes" : "No";
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Text(item.classType),
        new Text(item.transmission),
        new Text(hasAc)
      ],
    );
  }
}
