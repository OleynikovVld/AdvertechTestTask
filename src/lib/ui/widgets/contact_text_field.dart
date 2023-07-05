import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const ContactTextField({
    required this.labelText,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              onChanged: (value) {},
              controller: controller,
              decoration: InputDecoration(
                icon: _buildLeadingLock(),
                labelText: labelText,
                labelStyle: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeadingLock() {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFF5E9),
      ),
      child: const Icon(
        Icons.lock_open,
        color: Color(0xFFE5BE90),
        size: 20,
      ),
    );
  }
}
