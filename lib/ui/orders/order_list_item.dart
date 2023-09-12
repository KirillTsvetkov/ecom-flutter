import 'package:flutter/material.dart';
import 'package:ecom/ui/orders/order_details_dialog.dart';

class FoodWidget extends StatelessWidget {
  final String? description;
  final String? name;

  const FoodWidget({
    Key? key,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          description!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          name!,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        trailing: TextButton.icon(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return FoodDetailsDialog(
                  description: description!,
                  name: name!,
                );
              },
            );
          },
          icon: Icon(Icons.visibility),
          label: Text('View'),
        ),
      ),
    );
  }
}

