import 'package:flutter/material.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.fromLTRB(200, 100, 200, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'User Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: 1,
                    width: 200,
                    color: Colors.grey,
                  ),
                ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Enter Phone Number'),
          ),
        const  SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(labelText: 'OTP'),
            keyboardType: TextInputType.number,
          ),
         const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
