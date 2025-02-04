// import 'package:flutter/material.dart';

// class SignUpPageView extends StatefulWidget {
//   const SignUpPageView({super.key});

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPageView> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isChecked = false;

//   String? _email;
//   String? _password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//         automaticallyImplyLeading: false,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 20),
//                 buildTextField('First name', 'Please enter your first name'),
//                 const SizedBox(height: 15),
//                 buildTextField('Last name', 'Please enter your last name'),
//                 const SizedBox(height: 15),
//                 buildTextField('Email', 'Please enter a valid email',
//                     onSaved: (value) => _email = value),
//                 const SizedBox(height: 15),
//                 buildTextField('Phone number',
//                     'Please enter a valid phone number (10 digits)'),
//                 const SizedBox(height: 15),
//                 buildTextField(
//                     'Password', 'Password must be at least 6 characters',
//                     isPassword: true, onSaved: (value) => _password = value),
//                 const SizedBox(height: 15),
//                 buildTextField('Confirm password',
//                     'Password must be at least 6 characters',
//                     isPassword: true),
//                 const SizedBox(height: 15),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _isChecked,
//                       onChanged: (value) {
//                         setState(() {
//                           _isChecked = value ?? false;
//                         });
//                       },
//                     ),
//                     const Expanded(
//                       child: Text(
//                         "I agree to all terms and conditions.",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       if (_isChecked) {
//                         _formKey.currentState!.save();
//                         Navigator.pushReplacementNamed(context, '/login',
//                             arguments: {
//                               'email': _email,
//                               'password': _password,
//                             });
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                               content:
//                                   Text("Sign-up successful! Please log in.")),
//                         );
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text("You must accept the terms."),
//                           ),
//                         );
//                       }
//                     }
//                   },
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Sign Up",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(width: 10),
//                       Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(String label, String errorMessage,
//       {bool isPassword = false, Function(String?)? onSaved}) {
//     return TextFormField(
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return errorMessage;
//         }
//         if (label == 'Phone number' && value.length != 10) {
//           return errorMessage;
//         }
//         return null;
//       },
//       onSaved: onSaved,
//     );
//   }
// }
