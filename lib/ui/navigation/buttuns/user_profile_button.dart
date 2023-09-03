import 'package:flutter/material.dart';
import 'package:ecom/ui/users/user_profile_screen.dart';


class UserProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.person),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(),
          ),
        );
      },
    );
  }
}