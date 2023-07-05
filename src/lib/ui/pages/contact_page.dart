import 'package:flutter/material.dart';
import 'package:src/ui/widgets/contact_text_field.dart';

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
    return Column(
      children: <Widget>[
        const ContactTextField(labelText: 'Name'),
        const ContactTextField(labelText: 'Email'),
        const ContactTextField(labelText: 'Message'),
        const SizedBox(height: 40),
        _buildContactButton(),
      ],
    );
  }

  _buildContactButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF986D8E),
          minimumSize: const Size.fromHeight(50),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: const Text(
          'Send',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
