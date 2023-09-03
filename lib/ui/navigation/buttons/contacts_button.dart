import 'package:flutter/material.dart';

class ContactsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.contacts),
      onPressed: () {
        // Handle contacts button press
      },
    );
  }
}
