import 'package:flutter/material.dart';
import 'package:user_data_api/network.dart';
import 'package:user_data_api/user_data.dart';
import 'package:user_data_api/user_data_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Network network = Network();
  List<User>? userList;
@override
  void initState() {
    gettingUserData();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserDataScreen(userList: userList!,)));
    });
    // TODO: implement initState
    super.initState();
  }
  gettingUserData() async{
    userList = await network.getUserApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Icon(Icons.people, size: 150, color: Color.fromARGB(255, 63, 121, 244),),
            Text("Splash Screen", 
            style: TextStyle(
              color: Color.fromARGB(255, 63, 121, 244),
              fontSize: 50,
              fontWeight: FontWeight.w700
            ),)
          ],
        ),
      ),
    );
  }
}