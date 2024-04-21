import 'dart:ui';
import 'package:flutter/material.dart';

class user_form extends StatefulWidget {
  const user_form({Key? key}) : super(key: key);

  @override
  State<user_form> createState() => _user_formState();
}

class _user_formState extends State<user_form> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1000, // You can manually update the width here
        color: const Color(0xff252734),
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side - Image
            Container(
  width: 500,
  height: 300,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0), // Adding border radius
    image: const DecorationImage(
      image: AssetImage("assets/images/images.png"),
      fit: BoxFit.cover,
    ),
  ),
),


            const SizedBox(width: 50), // Increased width of SizedBox

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
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
                      labelText: 'Email',
                      fillColor: Colors.black87,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    // You can add validation logic here if required
                  ),
                  const SizedBox(height: 16.0), // Add some space between fields
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Vehicle',
                      fillColor: Colors.black87,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    // You can add validation logic here if required
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Center(
                      child: SizedBox(height: 16.0),
                    ),
                  ), // Add some space between fields
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle submit button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Change the button color here
                        padding: const EdgeInsets.all(16.0),
                      ),
                      child: const Text('Submit', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
