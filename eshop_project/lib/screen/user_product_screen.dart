import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/edit_product_screen.dart';
import 'package:eshop_project/widget/appdrawer.dart';
import 'package:eshop_project/widget/user_product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({Key? key}) : super(key: key);

  static const routeName = '/user-screen';

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Product'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
          itemCount: productData.items.length,
          itemBuilder: (context, index) => UserProductItems(
              id: productData.items[index].id,
              imgUrl: productData.items[index].imgURL,
              title: productData.items[index].title)),
    );
  }
}
