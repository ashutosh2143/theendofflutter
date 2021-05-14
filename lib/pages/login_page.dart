import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  get onChanged => null;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username ",
                      labelText: "username",
                    ),
                  ),
                  onChanged:(value){
                    name =value;
                    setState((){});
                  },
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password ",
                      labelText: "password",
                    ),
                  ),
                  Text("welcome $name",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 40.0,
                  ),
                  inkwell()( 
                    onTap:() async {
                    setState()(
                   changeButton = true;
                    });
                    await Future.delayed(duration(seconds:1));
                    Navigator.pushNamed(context,MyRoutes.homeRoute);
                  ),
                 child:AnimatedContainer(
                   duration:Duration(seconds:1);
                  width:changeButton?50:150,
                  height:50,
                  color: Colors.deepPurple,
                  child:changeButton?Icon(Icons.done,
                  color: Colors.white,)
                  alignment: Alignment.center,
                  child: Text("Login",style: TextStyle(color:Colors.white,
                  fontweight: fontweight.bold,
                  fontSize:22),
                  ),
                  decoration:BoxDecoration(
                   // color: Colors.deepPurple,
                   // shape : changeButton
                   //        ? BoxShape.circle
                   //        :BoxShape.rectangle, 
                    BorderRadius: BorderRadius.circle(changeButton?20:8)),
                  ),
                  ),
                 // ElevatedButton(
                 //   child: Text("Login"),
                 //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                 //   onPressed: () {
                 //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                 //   },
                //  )
                ],
              ),
            )
          ],
        // ignore: dead_code
        ));
  }
}
