import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({required this.label,required this.value,super.key});

  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
      child: Text(
      label,
      style: const TextStyle(fontSize: 24),
    ),
    ),
    Expanded(
    child: Text(
    value,
    style: const TextStyle(fontSize: 24),
    ),
    ),
    ],
    );
  }
}