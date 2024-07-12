import 'package:flutter/material.dart';
import 'calculator_page.dart';
import 'contact_listing_page.dart';
import 'signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Pages',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/calculator': (context) => CalculatorPage(),
        '/contactListing': (context) => ContactListingPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Pages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calculator');
              },
              child: Text('Calculator Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contactListing');
              },
              child: Text('Contact Listing Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up Page'),
            ),
          ],
        ),
      ),
    );
  }
}
