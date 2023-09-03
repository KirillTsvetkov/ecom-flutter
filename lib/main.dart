import 'package:flutter/material.dart';
import 'package:ecom/ui/orders/orders_list.dart';
import 'package:ecom/ui/navigation/buttuns/user_profile_button.dart';
import 'package:ecom/ui/navigation/buttuns/contacts_buttun.dart';
import 'package:ecom/ui/navigation/buttuns/menu_buttun.dart';


void main() {
  runApp(MaterialApp(title: 'Order App', home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrderListWidget(),
        appBar: AppBar(
          title: Text('Orders'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuButton(),
              UserProfileButton(),
              ContactsButton(),
            ],
          ),
        )
    );
  }
}
