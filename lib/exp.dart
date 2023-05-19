import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<Item> _data = generateItems(6);
Widget _buildPanel() {
  return ExpansionPanelList(
    expansionCallback: (int index, bool isExpanded) {

        _data[index].isExpanded = !isExpanded;

    },
    children: _data.map<ExpansionPanel>((Item item) {
      return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
            title: Text(item.headerValue),
          );
        },
        body: ListTile(title: Text(item.expandedValue), onTap: () {}),
        isExpanded: item.isExpanded,
      );
    }).toList(),
  );
}


class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<String> headerName = [
  "Управление отелем",
  "Управление туром",
  "Управление места",
  "Управление автомобилем",
  "Управление лодкой",
  "Управление событием",
];
List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: headerName[index],
      expandedValue: 'Это ${headerName[index]}',
    );
  });
}
