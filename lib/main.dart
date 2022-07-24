import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'خوش آمدید',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                side: BorderSide(color: Colors.white, width: 2.0),
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                'ورود',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                'ثبت نام',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
