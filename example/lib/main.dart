import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import './icon_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final menuItems = [
    {
      'value': 'item-1',
      'label': 'Item 1',
      'icon': CommunityMaterialIcons.numeric_1_box_outline
    },
    {
      'value': 'item-2',
      'label': 'Item 2',
      'icon': CommunityMaterialIcons.numeric_2_box_outline
    },
    {
      'value': 'item-3',
      'label': 'Item 3',
      'icon': CommunityMaterialIcons.numeric_3_box_outline
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Communiy Material Icon Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('${icons.length} Icons'),
          leading: IconButton(
            icon: Icon(CommunityMaterialIcons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(CommunityMaterialIcons.dots_vertical),
              itemBuilder: (contex) => menuItems
                  .map(
                    (item) => PopupMenuItem<String>(
                      value: item['value'],
                      child: ListTile(
                        leading: Icon(item['icon']),
                        title: Text(item['label']),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        body: Container(
          child: Center(
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: icons.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(icons[index]['icon']),
        title: SelectableText(icons[index]['name']),
      ),
    );
  }
}
