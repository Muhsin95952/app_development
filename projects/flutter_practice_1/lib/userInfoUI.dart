import 'package:flutter/material.dart';

class userInfoUI extends StatelessWidget {
  const userInfoUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/Muhsin.png'),
              ),
              SizedBox(height: 20,),
              Text("Muhsin Shah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Text("Flutter Developer.",
                  style: TextStyle(color: Colors.amber, fontSize: 20)),
              SizedBox(height: 20,),
              Divider(color: Colors.white),
              SizedBox(height: 20,),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20,
                  ),
                  title: Text(
                    "+92 340 9295952",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 20,
                  ),
                  title: Text(
                    "muhisnshah95952@gmail.com",
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
