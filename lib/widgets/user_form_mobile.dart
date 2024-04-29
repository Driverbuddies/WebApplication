import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_portfolio/constants/size.dart';

class UserFormMobile extends StatefulWidget {
  const UserFormMobile({Key? key}) : super(key: key);

  @override
  State<UserFormMobile> createState() => _UserFormMobileState();
}

class _UserFormMobileState extends State<UserFormMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= KMinDesktopWidth) {
            return Container(
              width: 1000, // You can manually update the width here
              color: const Color(0xff252734),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFormFields(),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                color: const Color(0xff252734),
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildFormFields(),
                    const SizedBox(height: 16.0), // Add space between form fields and button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle submit button press
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Change the button color here
                        ),
                        child: const Text('Submit', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildFormFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Starting Location',
            fillColor: Colors.black87,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          keyboardType: TextInputType.text,
          // You can add validation logic here if required
        ),
        const SizedBox(height: 16.0), // Add some space between fields
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Ending Location',
            fillColor: Colors.black87,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          keyboardType: TextInputType.text,
          // You can add validation logic here if required
        ),
        const SizedBox(height: 16.0), // Add some space between fields
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Time',
            fillColor: Colors.black87,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          keyboardType: TextInputType.datetime,
          // You can add validation logic here if required
        ),
        const SizedBox(height: 16.0), // Add some space between fields
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Payment Method',
            fillColor: Colors.black87,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          value: null,
          items: <String>[
            'Pay on Delivery',
            'Paytm',
            'PhonePe',
            'Google Pay',
            'Apply Card',
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Handle dropdown value change
          },
        ),
      ],
    );
  }
}
