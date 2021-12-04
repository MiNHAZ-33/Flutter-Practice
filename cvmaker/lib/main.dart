import 'package:cvmaker/cvmaker.dart';
import 'package:flutter/material.dart';
 void main()=> runApp(MyApp());

 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'this is titile',
       home: CvMakers(),
     );
   }
 }


 class CvMakers extends StatefulWidget {
   const CvMakers({Key? key}) : super(key: key);

   @override
   _CvMakerState createState() => _CvMakerState();
 }

 class _CvMakerState extends State<CvMakers> {
   TextEditingController nameController=TextEditingController();
   TextEditingController phnController=TextEditingController();
   TextEditingController addController=TextEditingController();
   TextEditingController emailController=TextEditingController();
   TextEditingController imgController=TextEditingController();
   TextEditingController crSumController=TextEditingController();

   sendCvVal(){
     Navigator.push(context, MaterialPageRoute(builder: (context){
     return CvMaker(
       name: nameController.text,
       phn: phnController.text,
       address: addController.text,
       img: imgController.text,
       email: emailController.text,
       crysum: crSumController.text
     );
     }
     )
     );
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('CV MAker App'),),
       body: Column(
         children: [
           Container(
             height: 80,
             margin: EdgeInsets.only(top: 10,bottom: 10),
             color: Colors.lightBlue,
             child: Text('Fill Up the from to make Resume!',
               style: const TextStyle(
                 color: Colors.white,
                 fontSize: 22,
               ),
             ),
           ),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: nameController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Full Name',
                 hintText: 'Enter Your First Name',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: nameController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>nameController.clear(),
                      icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: phnController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Phone Number',
                 hintText: 'Enter Your phn Number',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: phnController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>phnController.clear(),
                      icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10,width: 10),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: addController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Address',
                 hintText: 'Enter Your Address',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: addController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>addController.clear(),
                     icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10,width: 10),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: emailController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Email',
                 hintText: 'Enter Your Email',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: emailController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>emailController.clear(),
                     icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10,width: 10),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: imgController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Image',
                 hintText: 'Enter Your Image',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: imgController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>imgController.clear(),
                      icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10,width: 10),
           TextField(
             style: TextStyle(color: Colors.white),
             controller: crSumController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Career Sum',
                 hintText: 'Enter Your Career Sum',
                 prefixIcon: Icon(Icons.supervised_user_circle),
                 filled: true,
                 fillColor: Colors.grey,
                 suffixIcon: crSumController.text.isEmpty
                     ? Container(
                   width: 0,
                   height: 0,
                 )
                     : IconButton(onPressed: ()=>crSumController.clear(),
                      icon: Icon(Icons.close)
                 )
             ),
           ),
           SizedBox(height: 10,width: 10),
           ElevatedButton(onPressed: sendCvVal,
               child: Text('Submit')),
         ],
       ),
     );
   }
 }
