import 'package:flutter/material.dart';

class SignupDriver extends StatelessWidget {
  const SignupDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
        child: Form(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up as Driver',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 1,
                  width: 200,
                  color: Colors.grey,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Full Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Age'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your age';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Vehicle Information'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your vehicle information';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Vehicle Photo',
                      suffixIcon: IconButton(
                        onPressed: () {
                          // Implement vehicle photo upload logic here
                        },
                        icon: Icon(Icons.photo_camera),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please upload your vehicle photo';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'License',
                      suffixIcon: IconButton(
                        onPressed: () {
                          // Implement license upload logic here
                        },
                        icon: Icon(Icons.photo_camera),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your license details';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add form submission logic here
                  },
                  child: const Text('Get Signed Up as Driver'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
