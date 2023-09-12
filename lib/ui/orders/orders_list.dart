
import 'package:ecom/generated_code/api_docs.swagger.dart';
import 'package:flutter/material.dart';
import 'package:ecom/models/order.dart';
import 'package:ecom/api/api_orders.dart';
import 'package:ecom/ui/orders/order_list_item.dart';

class OrderListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResourcesFoodShow>>(
      future: getAllFoods(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final foods = snapshot.data;
            return ListView.builder(
              itemCount: foods!.length,
              itemBuilder: (context, index) {
                

                var food = foods[index];
               
                return FoodWidget(
                  name: food.name,
                  description: food.description,
                );
              },
            );
          }
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}