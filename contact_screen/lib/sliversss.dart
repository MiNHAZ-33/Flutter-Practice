import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List names = [
    'Minhaz',
    'Sherlock',
    'James',
    'Kishor',
    'Robin',
    'Musa',
    'Goergina',
    'Harry',
    'Watson',
    'Captain',
    'Jack',
    'Sparrow',
    'Constatine',
    'Lucifer',
    'Joker',
    'Richard'
  ];

  final List id = [
    '456545',
    '66446',
    '646465',
    '65644',
    '2131',
    '545445',
    '545545',
    '78544',
    '445785',
    '54577',
    '7447',
    '4546512',
    '852985',
    '33154',
    '66546',
    '457858',
    '5454'
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'Contacts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            background: Image.asset(
              'assets/img/1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext contex, int index) {
              return Container(
                height: 100,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage('assets/img/1.jpg'),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          names[index],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          id[index],
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.call),
                        Icon(Icons.message),
                        Icon(Icons.delete)
                      ],
                    )
                  ],
                ),
              );
            },
            childCount: names.length,
          ),
        ),
      ],
    );
  }
}
