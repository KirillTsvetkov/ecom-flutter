
import 'package:ecom/generated_code/api_docs.swagger.dart';
import 'package:flutter/material.dart';
import 'package:ecom/api/food_service.dart';
import 'package:ecom/ui/orders/food_list_item.dart';

class FoodListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ResourcesFoodShow?>(
      future: getAllFoods(1, 10),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final foods = snapshot.data;
            final foodsData = foods!.data;
            return ListView.builder(
              itemCount: foodsData!.length,
              itemBuilder: (context, index) {
                var food = foodsData[index];
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