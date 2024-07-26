import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
              Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Welcome to the Login Page',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ],)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Please enter your email and password to login, or use the Google login option.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 32.0),
            Container(
              width: 3,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 3,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 3,
              child: ElevatedButton(
                onPressed: () {
                  // Action ketika tombol login ditekan
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, // Hilangkan padding default
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF58AB83),
                        Color(0xFF67BBB6),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 3,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Action ketika tombol login dengan Google ditekan
                },
                style: ElevatedButton.styleFrom(
                  
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
                icon: Image.asset(
                  'lib/assets/google_logo.png', // Pastikan Anda memiliki logo Google di folder assets Anda
                  height: 24.0,
                ),
                label: Text('Login dengan Google'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: LoginScreen(),
));
