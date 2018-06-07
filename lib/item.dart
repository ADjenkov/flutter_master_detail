import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.title,
    @required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final List<Item> items = <Item>[
  new Item(
    title: 'Item 1',
    subtitle: 'This is the first item.',
  ),
  new Item(
    title: 'Item 2',
    subtitle: 'This is the second item.',
  ),
  new Item(
    title: 'Item 3',
    subtitle: 'This is the third item.',
  ),
  new Item(
    title: 'Item 1',
    subtitle: 'This is the first item.',
  ),
  new Item(
    title: 'Item 2',
    subtitle: 'This is the second item.',
  ),
  new Item(
    title: 'Item 3',
    subtitle: 'This is the third item.',
  ),
  new Item(
    title: 'Item 1',
    subtitle: 'This is the first item.',
  ),
  new Item(
    title: 'Item 2',
    subtitle: 'This is the second item.',
  ),
  new Item(
    title: 'Item 3',
    subtitle: 'This is the third item.',
  ),
];