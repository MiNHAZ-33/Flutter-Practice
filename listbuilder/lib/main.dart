import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'list builder',
      home: MyListBuilder(),
    );
  }
}

class MyListBuilder extends StatefulWidget {
  const MyListBuilder({Key? key}) : super(key: key);

  @override
  _MyListBuilderState createState() => _MyListBuilderState();
}

class _MyListBuilderState extends State<MyListBuilder> {
  final List<String> itm=['images','documents','Archive','profile','menu','story'];
  final List<int> clr=[600,700,200,500,700,700];
  final List<IconData> icn=[Icons.image,Icons.file_copy,Icons.archive,Icons.people,Icons.list_sharp,Icons.book];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder Example'),

      ),
      body:
      ListView.builder(itemCount: 6,
          itemBuilder: (BuildContext context,int index ){
        return Column(
            children:[
              InkResponse(
                child: InkWell(
                  splashColor: Colors.amber,
                  highlightColor: Colors.blue,
                  child: Container(
                    height: 100,
                    width: 500,
                    color: Colors.redAccent[clr[index]],
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Icon(icn[index]),
                        Text(itm[index],
                        ),


                      ],
                    ),
                  ),
                  onTap: (){},
                ),
              )

            ]
        );
      }
      ),
    );

  }
}

