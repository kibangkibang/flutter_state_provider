import 'package:flutter/material.dart';
import 'package:flutter_state_provider/models/cart.dart';
import 'package:flutter_state_provider/models/item.dart';
import 'package:flutter_state_provider/repositories/item_list.dart';
import 'package:provider/provider.dart';

class ItemScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final itemList = Provider.of<ItemList>(context);

    List<Item> items = itemList.getItems();
    return Scaffold(
      appBar: AppBar(title: Text('상품 목록'),actions: [
        Center(child: IconButton(onPressed: (){
          Navigator.of(context).pushNamed('/cart');
        }, icon: Icon(Icons.shopping_cart)),)
      ]),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Builder(builder: (context) {
            bool isInCart = cart.items.contains(items[index]);
            return ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].price.toString()),
              trailing: isInCart? IconButton(icon:Icon(Icons.check),onPressed: (){
                cart.deleteItem(items[index].id);
              },):IconButton(
                icon:Icon(Icons.add),
                onPressed: (){
                  cart.addItem(items[index]);
                },
              ),
            );
          },);
        },
      ),
    );
  }
}