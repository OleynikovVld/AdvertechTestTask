import 'package:flutter/material.dart';

class LeadingLockIcon extends StatelessWidget {
  const LeadingLockIcon({super.key});

  @override
  Widget build(BuildContext context) {
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
