// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 50),
//               Center(
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       'assets/images/wise_academy_logo.png',
//                       height: 270,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),
//               buildTextField("Email", emailController, Icons.email),
//               const SizedBox(height: 16),
//               buildTextField("Password", passwordController, Icons.lock,
//                   obscureText: true),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     "Forgot Password?",
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/welcome');
//                 },
//                 child: const Text(
//                   "Sign Up",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: RichText(
//                   text: TextSpan(
//                     text: "Don't have an account? ",
//                     style: const TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.bold),
//                     children: [
//                       TextSpan(
//                         text: "Create account",
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                           decoration: TextDecoration.underline,
//                         ),
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = () {
//                             Navigator.pushNamed(context, '/signup');
//                           },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Row(
//                 children: [
//                   Expanded(child: Divider()),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text("or"),
//                   ),
//                   Expanded(child: Divider()),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue[900],
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 onPressed: () {
//                   // Handle Facebook login
//                 },
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.facebook, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "Login with Facebook",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 onPressed: () {
//                   // Handle Google login
//                 },
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.g_mobiledata, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "Login with Google",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 onPressed: () {
//                   // Handle Apple login
//                 },
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.apple, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "Login with Apple",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(
//       String label, TextEditingController controller, IconData icon,
//       {bool obscureText = false}) {
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon),
//         labelText: label,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//         ),
//       ),
//     );
//   }
// }
