import 'package:flutter/material.dart';

import 'package:components_dev/utils/utils_functions.dart';
import 'package:components_dev/providers/provider_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Flutter'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        print(snapshot.data);
        return ListView(children: _listItens(snapshot.data, context));
      },
    );
  }

  List<Widget> _listItens(List<dynamic> optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];
    optListMenu.forEach((element) {
      final witgetvalue = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      optValueWidget.add(witgetvalue);
    });
    return optValueWidget;
  }
}
