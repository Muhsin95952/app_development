import 'package:flutter/material.dart';
import 'package:jason_data_in_appbar/jason_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            title: Text("Json data and Tab Bar", style: 
            TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700
            ),),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.pink,
              labelColor: Colors.greenAccent,
              tabs: [
              Tab(
                icon: Icon(Icons.person),
                text:  "User Info",
              ),
              Tab(
                icon: Icon(Icons.book),
                text:  "Book Info",
              ),
              Tab(
                icon: Icon(Icons.people),
                text:  "Info",
              ),
              Tab(
                icon: Icon(Icons.home),
                text:  "Home",
              ),
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  leading: 
                  CircleAvatar(child: Icon(Icons.person)),
                  title: Text("${userData[index]["firstName"]} ${userData[index]["lastName"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                  subtitle: Text(userData[index]["Role"]),
                ),
              );
            }),
            ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, index){
              return Container(
                
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: DecorationImage(image: AssetImage(userData[index]["image"]),
                  fit: BoxFit.cover
                  ),
                  
                ),
                
              );
            }),
            ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, index){
              return Card(
                margin:EdgeInsets.all(8),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("${userData[index]["firstName"]} ${userData[index]["lastName"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),),
                  subtitle: Text(userData[index]["Role"]),
                ),
              );
            }),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
              
              },)

          ]),
        ),
      ),
    );
  }
}

