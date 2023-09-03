import 'package:flutter/material.dart';
import 'package:ecom/ui/users/user_profile_screen.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    BottomAppBar(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           IconButton(
             icon: Icon(Icons.menu),
             onPressed: () {
               // Handle menu button press
             },
           ),
           IconButton(
             icon: Icon(Icons.person),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => UserProfileScreen(),
                 ),
               );
             },
           ),
           IconButton(
             icon: Icon(Icons.contacts),
             onPressed: () {
               // Handle contacts button press
             },
           ),
         ],
       ),
     )
  }
}