import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  void _NavigatetoPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'خوش آمدید',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(width: 8.0),
                    Icon(
                      Icons.login,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    side: BorderSide(color: Colors.black, width: 2.0),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    _NavigatetoPage(context, SecondScreen());
                  },
                  child: Text(
                    'ورود',
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                  ),
                  onPressed: () {
                    _NavigatetoPage(context, PasswordPage());
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
