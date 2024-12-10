import 'package:flutter/material.dart';
import 'package:untitled1/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Named Routes Demo',
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => HomeScreen(),
        Routes.second: (context) => SecondScreen(),
        Routes.third: (context) => ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.second);
              },
              child: Text('Go to Second Screen'),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.third);
              },
              child: Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Home Screen'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
