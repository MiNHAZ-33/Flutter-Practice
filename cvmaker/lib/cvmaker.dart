import 'package:flutter/material.dart';

class CvMaker extends StatelessWidget {
  final name;
  final phn;
  final email;
  final address;
  final img;
  final crysum;

  const CvMaker({Key? key,this.name,this.email,this.img,this.address,this.crysum,this.phn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resume of $name'),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(name,style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                    ),
                    Text(phn),
                    Text(email),
                    Text(address),
                  ],
                ),
              ),
              Container(
                child: Image.network(img),
              ),
            ],
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(top: 10,bottom: 10),
            color: Colors.lightBlue,
            child: Text('Career Objective',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
            ),
          ),
          Text(crysum)
        ],
      ),
    );
  }
}
