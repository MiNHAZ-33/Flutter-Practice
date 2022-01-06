import 'package:eshop_project/provider/product.dart';
import 'package:eshop_project/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);
  static const routeName = '/edit-product9screen';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  FocusNode imgUrlFocusNode = FocusNode();
  FocusNode titleFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();
  FocusNode priceFocusNode = FocusNode();

  TextEditingController imgController = TextEditingController();

  var addedProduct =
      Product(id: '', title: '', description: '', price: 0, imgURL: '');

  final _form = GlobalKey<FormState>();

  var isInit = true;
  var initVal = {'title': ' ', 'price': ' ', 'description': ' ', 'imgUrl': ''};

  void previewImage() {
    if (!imgUrlFocusNode.hasFocus) {
      setState(() {});
    }
  }

  void _saveForm() {
    var isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }

    _form.currentState!.save();
    final prodId = ModalRoute.of(context)!.settings.arguments;
    if (prodId != null) {
      Provider.of<Products>(context, listen: false).addProduct(addedProduct);
    } else {
      Provider.of<Products>(context, listen: false).addProduct(addedProduct);
      Navigator.of(context).pop();
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (isInit) {
      final prodId = ModalRoute.of(context)!.settings.arguments as String?;
      if (prodId != null) {
        addedProduct =
            Provider.of<Products>(context, listen: false).findById(prodId);

        initVal = {
          'title': addedProduct.id,
          'price': addedProduct.price.toString(),
          'description': addedProduct.description,
          'imgUrl': ''
        };
        imgController.text = addedProduct.imgURL;
      }
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    imgUrlFocusNode.removeListener(previewImage);
    priceFocusNode.dispose();
    descriptionFocusNode.dispose();
    titleFocusNode.dispose();
    imgController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    imgUrlFocusNode.addListener(previewImage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Products'),
        actions: [
          IconButton(
            onPressed: _saveForm,
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                initialValue: initVal['title'],
                decoration: InputDecoration(
                  label: Text('Title'),
                ),
                onFieldSubmitted: (value) =>
                    FocusScope.of(context).requestFocus(priceFocusNode),
                textInputAction: TextInputAction.next,
                onSaved: (newValue) => addedProduct = Product(
                    id: addedProduct.id,
                    title: newValue as String,
                    description: addedProduct.description,
                    price: addedProduct.price,
                    imgURL: addedProduct.imgURL),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide a title';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: initVal['price'],
                focusNode: priceFocusNode,
                decoration: InputDecoration(
                  label: Text('Price'),
                ),
                onFieldSubmitted: (value) =>
                    FocusScope.of(context).requestFocus(descriptionFocusNode),
                textInputAction: TextInputAction.next,
                onSaved: (newValue) => addedProduct = Product(
                    id: addedProduct.id,
                    title: addedProduct.title,
                    description: addedProduct.description,
                    price: double.parse(newValue as String),
                    imgURL: addedProduct.imgURL),
              ),
              TextFormField(
                initialValue: initVal['description'],
                decoration: InputDecoration(
                  label: Text('Description'),
                ),
                maxLines: 3,
                textInputAction: TextInputAction.next,
                focusNode: descriptionFocusNode,
                onSaved: (newValue) => addedProduct = Product(
                    id: addedProduct.id,
                    title: addedProduct.title,
                    description: newValue as String,
                    price: addedProduct.price,
                    imgURL: addedProduct.imgURL),
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(border: Border.all()),
                    child: imgController.text.isEmpty
                        ? Text('Image Preview')
                        : Image.network(imgController.text),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: initVal['imgUrl'],
                      decoration: InputDecoration(
                        label: Text('Image Url'),
                      ),
                      onSaved: (newValue) => addedProduct = Product(
                          id: addedProduct.id,
                          title: addedProduct.title,
                          description: addedProduct.description,
                          price: addedProduct.price,
                          imgURL: newValue as String),
                      //controller: imgController,
                      focusNode: imgUrlFocusNode,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
