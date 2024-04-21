import 'package:flutter/material.dart';

class login_user extends StatelessWidget {
  const login_user({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'User Login',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        const  SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Username or Phone Number'),
          ),
        const  SizedBox(height: 10),
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
