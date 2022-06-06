import 'package:flutter_state_provider/models/item.dart';

class ItemList{
  List<Item> items = [
    Item(id: 1, title: '빵', price: 1000),
    Item(id: 2, title: '고기', price: 2000),
    Item(id: 3, title: '쌀', price: 3000),
    Item(id: 4, title: '밀가루', price: 500),
    Item(id: 5, title: '핫도그', price: 1500),
    Item(id: 6, title: '케익', price: 4500),
  ];

  List<Item> getItems(){
    return items;
  }
}