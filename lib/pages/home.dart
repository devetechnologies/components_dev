import 'package:flutter/material.dart';

import 'package:components_dev/providers/provider_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Componentes Flutter'),
          ),
          body: _list()),
    );
  }

  Widget _list() {
    print(menuProvider);
    return ListView(
      children: _listItens(),
    );
  }

  List<Widget> _listItens() {
    return [
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
    ];
  }
}
