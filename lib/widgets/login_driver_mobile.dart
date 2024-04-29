import 'package:flutter/material.dart';

class LoginDriverMobile extends StatelessWidget {
  const LoginDriverMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'Driver Login',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Divider(height: 1, color: Colors.grey),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Enter Phone Number'),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'OTP'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your login logic here
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
