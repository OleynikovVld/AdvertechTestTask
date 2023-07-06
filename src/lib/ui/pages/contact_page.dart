import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:src/bloc/contact_bloc.dart';
import 'package:src/ui/widgets/leading_lock_icon.dart';

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
      body: BlocProvider<ContactBloc>(
        create: (context) => ContactBloc(),
        child: const ContactPageBody(),
      ),
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
        _buildTextField('Name', nameController),
        _buildTextField('Email', emailController),
        _buildTextField('Message', messageController),
        const SizedBox(height: 40),
        _buildContactButton(),
      ],
    );
  }

  _buildTextField(String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              onChanged: (value) {
                BlocProvider.of<ContactBloc>(context).add(
                  CheckIfValidEvent(
                      name: nameController.text,
                      email: emailController.text,
                      message: messageController.text),
                );
              },
              controller: controller,
              decoration: InputDecoration(
                icon: const LeadingLockIcon(),
                labelText: labelText,
                labelStyle: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildContactButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactInvalidState) {
            return ElevatedButton(
              onPressed: null,
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
            );
          }
          return ElevatedButton(
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
          );
        },
      ),
    );
  }
}
