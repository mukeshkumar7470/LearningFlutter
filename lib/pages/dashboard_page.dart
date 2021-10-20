import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const String dashboardRoute = '/Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),

        ),
      ),
    );
  }
}
