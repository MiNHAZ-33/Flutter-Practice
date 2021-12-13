import 'package:flutter/material.dart';

import 'fetchdata.dart';
import 'photos.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFakeApiCall(),
    );
  }
}

class MyFakeApiCall extends StatefulWidget {
  const MyFakeApiCall({Key? key}) : super(key: key);

  @override
  _MyFakeApiCallState createState() => _MyFakeApiCallState();
}

class _MyFakeApiCallState extends State<MyFakeApiCall> {
  late Future<List<Photos>> loadedPhotos;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadedPhotos = fetchphotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Request Example using fake API!'),
      ),
      body: Center(
        child: FutureBuilder(
            future: loadedPhotos,
            builder:
                (BuildContext context, AsyncSnapshot<List<Photos>> snapshot) {
              if (snapshot.hasData) {
                List<Photos> multipleData = snapshot.data as List<Photos>;
                return ListView(
                  children: multipleData
                      .map(
                        (Photos post) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(leading: Image.network(post.thumbnailUrl), title: Text(post.title),),
                        ),
                      )
                      .toList(),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
