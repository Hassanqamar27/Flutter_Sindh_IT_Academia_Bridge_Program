// import 'package:flutter/material.dart';

// class ContactListingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Listing'),
//       ),
//       body: Center(
//         child: Text('Contact Listing Page'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
class ContactListingPage extends StatefulWidget {
  @override
  _ContactListingPageState createState() => _ContactListingPageState();
}
class _ContactListingPageState extends State<ContactListingPage> {
  List<Map<String, String>> contacts = [
    {'name': 'John Doe', 'phone': '123-456-7890'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},
    {'name': 'Hassan Qamar', 'phone': '123-123-4567'},

    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Listing'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
            // You can add more fields to display here
          );
        },
      ),
    );
  }
}


