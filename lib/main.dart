import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: 
        DefaultTabController(
          length: 4,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.green.shade900,
            child: Icon(Icons.chat,),
            ),
            
            appBar: AppBar(
              backgroundColor: Colors.green.shade900,
              title: Text("WhatsApp"),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(Icons.more_vert),
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text("CHATS"),
                  ),
                  Tab(
                    child: Text("STATUS"),
                  ),
                  Tab(
                    child: Text("CALLS"),
                  ),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              children: [
                Icon(Icons.camera_alt),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      abc("Ahmed Ali", "Hello World...", "3:34 AM", "3"),
                      abc("Hassan", "Iam Bzy...", "5:30 PM", "2"),
                      abc("Sir Bilal", "Assignment is Here...", "8:00 AM", "1"),
                      abc("Asad", "Iam Waiting...", "6:00 AM", "5"),
                      abc("Nida Yasir", "Kal Apko Show Me Ana hy", "2:00 AM",
                          "10"),
                      abc("Coke Studio", "Singing for Coke Plzz..", "10:00 AM",
                          "12"),
                      abc("Junaid Akram", "Khalli Karao", "2:00 AM", "1"),
                      abc("Nadir Ali", "kesa laga mera mazak...", "1:00 AM",
                          "15"),
                      abc("Former President", "App Banado", "4:00 AM", "1"),
                      abc("Ahmed Ali", "Hello World...", "3:34 AM", "3"),
                      abc("Hassan", "Iam Bzy...", "5:30 PM", "2"),
                      abc("Sir Bilal", "Assignment is Here...", "8:00 AM", "1"),
                      abc("Asad", "Iam Waiting...", "6:00 AM", "5"),
                      abc("Nida Yasir", "Kal Apko Show Me Ana hy", "2:00 AM",
                          "10"),
                      abc("Coke Studio", "Singing for Coke Plzz..", "10:00 AM",
                          "12"),
                      abc("Junaid Akram", "Khalli Karao", "2:00 AM", "1"),
                      abc("Nadir Ali", "kesa laga mera mazak...", "1:00 AM",
                          "15"),
                      abc("Former President", "App Banado", "4:00 AM", "1"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    status()
                  
                  ],
                ),
                Column(
                  children: [
                    call()

                  ],
                )
              ],
            ),
          ),
        ));
  }
}




Widget abc(String name, String text, String time, String msgs) {
  return
  ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green.shade900,
          radius: 20,
        ),
        title: Text("${name}"),
        subtitle: Text("${text}"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("${time}"),
            CircleAvatar(
              backgroundColor: Colors.green.shade900,
              radius: 10,
              child: Text(
                "${msgs}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            
          ],
        ),
  );
  
}

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.white,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                    bottom: 0.1,
                    right: 1.0,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 10, bottom: 5),
            child: Text(
              "Recent Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ), 

          // SizedBox(height: 5,),

          Column(
            children: [
              pop("Meshar", "15 minutes ago",),
              pop("Asad", "Just Now", ),
              pop("Junaid", "1 minutes ago"),
              // pop("Babar Azam", "Just Now",),
              // pop("Rizwan", "2 minutes ago"),
              
            

            ],
          ),

 


          


               

 
],



      ),
    


    );
    
    
  }
}

Widget pop ( String name, String time,  ){
  return  

          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              title:Text("${name}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              subtitle: Text("${time}", style: TextStyle(color: Colors.grey),),
              leading: CircleAvatar(
                radius:30,
                backgroundColor: Colors.yellow,
              ),
            ),
          );
}

class call extends StatefulWidget {
  const call({ Key? key }) : super(key: key);

  @override
  _callState createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return 
       
        SingleChildScrollView(child: 
        Column(
          children: [
            callscreen("Ahmed", "Today, 10:38 PM"),
              callscreen("Asad", "yesterday, 12:40 PM"),
          callscreen("Babar Azam", "Today, 1:00 PM"),
           callscreen("Virat Kohli", "Today, 1:30 PM"),
              callscreen("Shoiab Akhter", "Yesterday, 5:00 AM"),
          callscreen("Ahmed", "Today, 10:38 PM"),
            
            
          ],

        ),);
      
    
  }
}

Widget callscreen (String name, String time){
  return Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              title:
              Row(children: [
                Icon(Icons.arrow_downward,
                color: Colors.blue,
                size: 25,),
                Text("${name}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              ],),
             
              
              
              subtitle: Text("${time}", style: TextStyle(color: Colors.grey),),
              leading: CircleAvatar(
                radius:30,
                backgroundColor: Colors.yellow,
              ),
              trailing: Icon(Icons.phone,
              color: Colors.green.shade900,
              size: 32,),
            ),
          );
}