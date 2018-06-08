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
    final Widget content = new Container(
        decoration: new BoxDecoration(color: Colors.white),
        child:
            new Column(mainAxisAlignment: MainAxisAlignment.start, children: [
         new AspectRatio(aspectRatio: 16/9, child: 
        new Container(height: 200.0,child: 
          new Image.network(item.imageUrl, fit: BoxFit.fitWidth)),
         ),
          new Divider(),
          new Column(
            children: [
              new Row(
                children: [
                  new Padding(
                      padding: new EdgeInsets.only(left: 10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Price",
                                textAlign: TextAlign.left,
                               style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Class",
                                style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Doors",
                                style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Seats",
                               style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Transmission",
                               style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                "Luggage",
                              style: new TextStyle(color: Colors.grey, fontSize: 16.0)
                              )),
                        ],
                      )),
                  new Padding(
                      padding: new EdgeInsets.only(left: 50.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                '€' + item.price.toString() + '/day',
                                style: textTheme.subhead,
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                item.classType.toString(),
                                style: textTheme.subhead,
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                item.doors.toString(),
                                style: textTheme.subhead,
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                item.seats,
                                style: textTheme.subhead,
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                item.transmission,
                                style: textTheme.subhead,
                              )),
                          new Container(
                              margin:
                                  new EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new Text(
                                item.luggage.toString(),
                                style: textTheme.subhead,
                              ))
                        ],
                      ))
                ],
              ),
            ],
          )
        ]));

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
