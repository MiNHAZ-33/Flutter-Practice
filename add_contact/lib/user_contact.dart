import 'package:flutter/material.dart';
import './models.dart';
import './main.dart';

class User extends StatefulWidget {
  List<Contacts> newContact;
  User(this.newContact);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  void deleteContact(index) {
    setState(() {
      contactList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 50,
      delegate: SliverChildBuilderDelegate(
        (context, int index) {
          return Card(
            elevation: 10,
            // color: Theme.of(context).backgroundColor,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blueGrey),
                  ),
                  child: Text(
                    widget.newContact[index].id,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.newContact[index].name,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.newContact[index].number.toString(),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    deleteContact(index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
        childCount: widget.newContact.length,
      ),
    );
  }
}
