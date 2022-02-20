import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storege_check/data.dart';

class OutPutScreen extends StatefulWidget {
  const OutPutScreen({Key? key}) : super(key: key);

  @override
  State<OutPutScreen> createState() => _OutPutScreenState();
}

class _OutPutScreenState extends State<OutPutScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  void addData() async {
    await Provider.of<DataProvider>(context, listen: false).setData();
  }

  @override
  Widget build(BuildContext context) {
    Data data = Provider.of<DataProvider>(context).getData;
    return Scaffold(
      body: Center(
        child: Text(data.name + data.id),
      ),
    );
  }
}
