import 'package:flutter/material.dart';
import 'package:ecom/ui/orders/order_details_dialog.dart';

class OrderWidget extends StatelessWidget {
  final String description;
  final double amount;

  const OrderWidget({
    Key? key,
    required this.description,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          description,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '\$${amount.toStringAsFixed(2)}',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        trailing: TextButton.icon(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return OrderDetailsDialog(
                  description: description,
                  amount: amount,
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

