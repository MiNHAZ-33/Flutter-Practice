import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.name, this.email, this.password);

  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA46CFF),
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text('Welcome $name'),
          ],
        ),
        backgroundColor: Color(0xff1E0085),
        flexibleSpace: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
      ),
      drawer: Drawer(
        child: Material(
          color: Color(0xff3CBEA9),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Container(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 80,
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                title: Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            //padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            decoration: BoxDecoration(
              color: Color(0xffC4FCF0),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                'What is your type?',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          //SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4,
                  // height: 200,
                  // width: 400,

                  child: Card(
                    elevation: 10,
                    color: Color(0xff00DEFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'I am a Cat person',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CatPage()),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(
                    elevation: 10,
                    color: Color(0xff00DEFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'I am a Dog person',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DogPage()),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}


// For sliver
// body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             centerTitle: true,
//             title: Column(
//               children: [
//                 Text('Welcome $name'),
//               ],
//             ),
//             backgroundColor: Color(0xff1E0085),
//             flexibleSpace: Container(
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(50)),
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(50),
//                 bottomRight: Radius.circular(50),
//               ),
//             ),
//             expandedHeight: 80,
//           ),
//         ],
//       ),