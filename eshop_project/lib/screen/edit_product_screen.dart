import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);
  static const routeName = '/edit-product9screen';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  FocusNode imgUrlFocusNode = FocusNode();
  TextEditingController imgController = TextEditingController();
  void previewImage() {
    if (!imgUrlFocusNode.hasFocus) {
      setState(() {});
    }
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
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Price'),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Description'),
            ),
            maxLines: 3,
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
                  decoration: InputDecoration(
                    label: Text('Image Url'),
                  ),
                  controller: imgController,
                  focusNode: imgUrlFocusNode,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
