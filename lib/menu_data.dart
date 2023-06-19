import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'menu_item.dart';

class MenuData {
  static Future<List<MenuItem>> getMenuItems() async {
    final jsonStr = await rootBundle.loadString('assets/itens_cardapio.json');
    final jsonData = json.decode(jsonStr);
    
    List<MenuItem> menuItems = [];
    for (var item in jsonData) {
      MenuItem menuItem = MenuItem(
        imageUrl: item['imageUrl'],
        name: item['name'],
        description: item['description'],
        price: item['preco'].toDouble(),
      );
      menuItems.add(menuItem);
    }
    
    return menuItems;
  }
}
