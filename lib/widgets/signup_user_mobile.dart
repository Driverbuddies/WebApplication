import 'package:flutter/material.dart';

class SignupUserMobile extends StatefulWidget {
  const SignupUserMobile({Key? key}) : super(key: key);

  @override
  _SignupUserMobileState createState() => _SignupUserMobileState();
}

class _SignupUserMobileState extends State<SignupUserMobile> {
  final _formKey = GlobalKey<FormState>();
  late String _fullName;
  late int _age;
  String _phoneNumber = '+91'; // Default value for phone number
  late String _email;
  late String _gender = 'Male'; // Default value for gender
  late String _otp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Divider(height: 1, color: Colors.grey),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _fullName = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.parse(value!);
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                initialValue: _phoneNumber,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'OTP'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter OTP';
                  }
                  return null;
                },
                onSaved: (value) {
                  _otp = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Gender'),
                value: _gender,
                items: ['Male', 'Female']
                    .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    })
                    .toList(),
                onChanged: (String? value) {
                  setState(() {
                    _gender = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your gender';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform signup operation with the collected data
                    // For example, you can print the collected data
                    print('Full Name: $_fullName');
                    print('Age: $_age');
                    print('Phone Number: $_phoneNumber');
                    print('Email: $_email');
                    print('Gender: $_gender');
                    print('OTP: $_otp');
                  }
                },
                child: const Text('Get Signed Up here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
