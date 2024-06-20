import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login/Signup')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Email field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            // Password field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
            ),
            // Login button
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login logic
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text('Login'),
            ),
            // Signup button
            TextButton(
              onPressed: () {
                // TODO: Implement signup logic
              },
              child: Text('Sign Up'),
            ),
            // Forgot password button
            TextButton(
              onPressed: () {
                // TODO: Implement password recovery logic
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}