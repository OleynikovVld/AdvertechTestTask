import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Contact us'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ContactPageBody(),
    );
  }
}

class ContactPageBody extends StatelessWidget {
  const ContactPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}