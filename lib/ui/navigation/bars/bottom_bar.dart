import 'package:flutter/material.dart';
import 'package:ecom/ui/navigation/buttons/user_profile_button.dart';
import 'package:ecom/ui/navigation/buttons/menu_button.dart';
import 'package:ecom/ui/navigation/buttons/contacts_button.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MenuButton(),
          UserProfileButton(),
          ContactsButton(),
        ],
      ),
    );
  }
}
