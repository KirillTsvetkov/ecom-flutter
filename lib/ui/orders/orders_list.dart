
import 'package:flutter/material.dart';
import 'package:ecom/models/order.dart';
import 'package:ecom/api/api_orders.dart';
import 'package:ecom/ui/orders/order_list_item.dart';

class OrderListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Order>>(
      future: fetchOrders(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final orders = snapshot.data;

            return ListView.builder(
              itemCount: orders?.length,
              itemBuilder: (context, index) {
                final order = orders![index];

                return OrderWidget(
                  description: order.description,
                  amount: order.amount,
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