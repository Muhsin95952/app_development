import 'package:flutter/material.dart';
import 'package:user_data_api/user_data.dart';

class UserDataScreen extends StatelessWidget {
 UserDataScreen({super.key, required this.userList});

  List<User> userList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 121, 244),
        centerTitle: true,
        title: Text("User Data Screen",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: userList.length,
            itemBuilder: (context, index){
          return Container(
            height: 150,
            width: 300,
           // color: Colors.red,
            child: Column(
              children: [
                Card(child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(userList[index].name.toString(),style: TextStyle(fontSize: 24),),
                  subtitle: Text(userList[index].email),
                  trailing: Text(userList[index].company!.name.toString(),style: TextStyle(color: Colors.blue,fontSize: 16),),
                ))
              ],
            ),
          );
        }),
      ), 
    );
  }
}