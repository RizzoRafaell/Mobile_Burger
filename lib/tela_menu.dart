import 'package:flutter/material.dart';
import 'menu_data.dart';
import 'menu_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: TelaMenu(key: Key('telaMenu')),
      title: 'Mobile Burgers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  List<MenuItem> _menuItems = [];

  @override
  void initState() {
    super.initState();
    loadMenuItems();
  }

  void loadMenuItems() async {
    List<MenuItem> menuItems = await MenuData.getMenuItems();
    setState(() {
      _menuItems = menuItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosso Cardápio'),
        centerTitle: true,
  leading: IconButton(
    icon: Image.asset('assets/images/back_icon.png'),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),
      body: ListView.builder(
        itemCount: _menuItems.length,
        itemBuilder: (context, index) {
          MenuItem menuItem = _menuItems[index];
          return ListTile(
            leading: Image.asset(menuItem.imageUrl),
            title: Text(menuItem.name),
            subtitle: Text(menuItem.description),
            trailing: Text('R\$ ${menuItem.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}



// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors