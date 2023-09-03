import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:ecom/models/order.dart';


Future<List<Order>> fetchOrders() async {
  final response = await http.get(Uri.parse('https://64f448de932537f4051a3904.mockapi.io/api/orders'));

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Order.fromJson(json)).toList();
  } else {
    throw Exception('Failed to fetch orders');
  }
}
