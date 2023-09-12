import 'package:flutter/material.dart';

class FoodDetailsDialog extends StatelessWidget {
  final String description;
  final String name;

  const FoodDetailsDialog({
    Key? key,
    required this.description,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(description),
      content: Text('Name: ${name}'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}