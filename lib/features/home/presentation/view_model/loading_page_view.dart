// import 'package:flutter/material.dart';

// class LoadingPageView extends StatefulWidget {
//   const LoadingPageView({super.key});

//   @override
//   State<LoadingPageView> createState() => _LoadingPageViewState();
// }

// class _LoadingPageViewState extends State<LoadingPageView> {
//   @override
//   void initState() {
//     super.initState();

//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.pushReplacementNamed(context, '/onboarding');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/images/wise_academy_logo.png',
//               height: 400,
//             ),
//             const SizedBox(height: 20),
//             const CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
