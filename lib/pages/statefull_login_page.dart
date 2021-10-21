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
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 24.0,
              ),

              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24.0),
                child: Text("Welcome $name",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Username",
                          labelText: "Username",
                          contentPadding: EdgeInsets.fromLTRB(14, 14, 14, 0),// control your hints text size
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }

                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {

                        });
                      },
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Password",
                          labelText: "Password",
                          contentPadding: EdgeInsets.fromLTRB(14, 14, 14, 0),// control your hints text size
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast";
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeBtn? 50 : double.maxFinite, //for match_parent
                    height: 46,
                    alignment: Alignment.center,
                    child: changeBtn? const Icon(Icons.done,
                    color: Colors.white,) : const Text(
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
              const SizedBox(
                height: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
