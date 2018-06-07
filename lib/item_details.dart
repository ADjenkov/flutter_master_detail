import 'package:flutter_master_detail/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Item item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content =
        new Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      new Image.network(item.imageUrl),
      new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Text(
                    "Price",
                    textAlign: TextAlign.left,
                    style: textTheme.subhead,
                  ),
                  new Text(
                    "Class",
                    style: textTheme.subhead,
                  ),
                  new Text(
                    "Doors",
                    style: textTheme.subhead,
                  ),
                  new Text(
                    "Seats",
                    style: textTheme.subhead,
                  ),
                  new Text(
                    "Transmission",
                    style: textTheme.subhead,
                  ),
                  new Text(
                    "Luggage",
                    style: textTheme.subhead,
                  ),
                ],
              ),
              new Padding(
                  padding: new EdgeInsets.only(left: 50.0),
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      new Text(
                        item.price.toString(),
                        style: textTheme.subhead,
                      ),
                    ],
                  ))
            ],
          ),
        ],
      )
    ]);

    if (isInTabletLayout) {
      return new Center(child: content);
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(item.name),
      ),
      body: content,
    );
  }
}
