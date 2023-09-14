import 'package:ecom/generated_code/api_docs.swagger.dart';
import 'package:flutter/material.dart';
import 'package:ecom/api/food_service.dart';
import 'package:ecom/ui/orders/food_list_item.dart';

class FoodListWidget extends StatefulWidget {
  @override
  State<FoodListWidget> createState() => _FoodListWidgetState();
}

class _FoodListWidgetState extends State<FoodListWidget> {
 List<ResourcesFoodShow$Data$Item>? foods;
 int page = 1;
 final scrollController = ScrollController();
 @override
 void initState() {
   super.initState();
   scrollController.addListener(_scrollListener);
   fetchFood(page);
 }
 
 Future<ResourcesFoodShow$Data$Item?> fetchFood(int page) async {
   try {
     var result = await getAllFoods(page, 10) ?? [];
     print(result);
     setState(() {
        foods = [...?foods, ...result];
     });
   } catch (e) {
     // Handle the exception
   }
 }
     
 @override
 Widget build(BuildContext context) {
  if (foods == null) {
    return CircularProgressIndicator();
  } else {
    return ListView.builder(
      controller: scrollController,
      itemCount: foods!.length ?? 0,
      itemBuilder: (context, index) {
        var food = foods![index];
        return FoodWidget(
          name: food.name,
          description: food.description,
        );
      },
    );
  }
 }

  void _scrollListener() {
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
      page = page + 1;
      fetchFood(page);
    }
  }
}
