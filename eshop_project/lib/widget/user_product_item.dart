import 'package:eshop_project/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductItems extends StatelessWidget {
  final String id;
  final String imgUrl;
  final String title;

  const UserProductItems(
      {Key? key, required this.id, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        child: Image.network(
          imgUrl,
          fit: BoxFit.contain,
        ),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                Provider.of<Products>(context, listen: false).deleteProduct(id);
              },
              icon: Icon(
                Icons.delete,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
