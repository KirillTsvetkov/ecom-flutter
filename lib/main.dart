import 'package:flutter/material.dart';
import 'package:ecom/ui/orders/food_list.dart';
import 'package:ecom/ui/navigation/bars/bottom_bar.dart';


void main() {
  runApp(MaterialApp(title: 'Order App', home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FoodListWidget(),
        appBar: AppBar(
          title: Text('Food'),
        ),
        bottomNavigationBar: BottomBar()
    );
  }
}
