import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/routes.dart';

import 'dashboard_page.dart';

class LoginPage3 extends StatefulWidget {

  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String name = "";
  bool changeBtn = false;

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
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24.0),
              child: Text("Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Username",
                        labelText: "Username"
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 32.0),
              child: InkWell(
                onTap: () async {
                  setState(() {
                    changeBtn = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeBtn? 50 : double.maxFinite, //for match_parent
                  height: 42,
                  alignment: Alignment.center,
                  child: changeBtn? Icon(Icons.done,
                  color: Colors.white,) : Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeBtn? 62 : 8)
                  ),
                ),
              ),
            ),

            /*Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 32.0),
              child: SizedBox(
                width: double.infinity, // <-- match_parent
                height: 42.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              side: BorderSide(color: Colors.indigo)
                          )
                      )
                  ),
                  child: Text("Login", style: TextStyle(
                    fontSize: 18,
                  ),
                  ),

                  onPressed: () {
                    print("Login Clicked");
                    print(usernameController.text+"------"+passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                ),
              ),
            ),*/
            SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
