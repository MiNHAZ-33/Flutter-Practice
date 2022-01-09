import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/edit_product_screen.dart';
import 'package:eshop_project/widget/appdrawer.dart';
import 'package:eshop_project/widget/user_product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({Key? key}) : super(key: key);

  static const routeName = '/user-screen';

  Future<void> _refresher(BuildContext context) async {
    Provider.of<Products>(context, listen: false).fetchAndShowProducts();
  }

  @override
  Widget build(BuildContext context) {
    // final productData = Provider.of<Products>(context);
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
      body: FutureBuilder(
          future: _refresher(context),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : RefreshIndicator(
                    onRefresh: () => _refresher(context),
                    child: Consumer<Products>(
                      builder: (context, productData, _) => productData
                              .items.isEmpty
                          ? Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: Colors.red,
                                  ),
                                  Text('No product is added by this user'),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemCount: productData.items.length,
                                itemBuilder: (context, index) => Column(
                                  children: [
                                    UserProductItems(
                                      id: productData.items[index].id,
                                      imgUrl: productData.items[index].imgURL,
                                      title: productData.items[index].title,
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  );
          }),
    );
  }
}
