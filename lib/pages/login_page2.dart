import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/dashboard_page.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

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
            Text("Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Username",
                        labelText: "Username"
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
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
              child: SizedBox(
                  width: double.infinity, // <-- match_parent
                  height: 42.0,
                  child: ElevatedButton(
                    child: Text("Login"),

                    onPressed: () {
                      print("Login Clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()),
                      );
                    },
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
