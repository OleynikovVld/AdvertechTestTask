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

class ContactPageBody extends StatefulWidget {
  const ContactPageBody({super.key});

  @override
  State<ContactPageBody> createState() => _ContactPageBodyState();
}

class _ContactPageBodyState extends State<ContactPageBody> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactTextField(labelText: 'Name', controller: nameController),
        ContactTextField(labelText: 'Email', controller: emailController),
        ContactTextField(labelText: 'Message', controller: messageController),
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
