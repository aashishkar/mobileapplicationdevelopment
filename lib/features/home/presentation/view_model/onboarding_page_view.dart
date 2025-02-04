// import 'package:flutter/material.dart';

// class OnboardingPageView extends StatefulWidget {
//   const OnboardingPageView({super.key});

//   @override
//   _OnboardingPageState createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPageView> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: PageView(
//                 controller: _pageController,
//                 onPageChanged: (int page) {
//                   setState(() {
//                     _currentPage = page;
//                   });
//                 },
//                 children: [
//                   buildOnboardingPage(
//                     image: 'assets/images/onboard2.png',
//                     title: 'Welcome to Wise Academy',
//                     description:
//                         'Learn Smart, Grow Fast – Wise Academy at Your Fingertips!',
//                   ),
//                   buildOnboardingPage(
//                     image: 'assets/images/onboard1.png',
//                     title: 'Empowering Minds, One Click at a Time.',
//                     description: 'Empowering Minds, One Click at a Time.',
//                   ),
//                   buildOnboardingPage(
//                     image: 'assets/images/onboard3.png',
//                     title: 'Your Learning. Your Pace. Your Success',
//                     description: 'Sign up or sign in to begin your Study.',
//                   ),
//                 ],
//               ),
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 3,
//                 (index) => buildDot(index, _currentPage),
//               ),
//             ),

//             const SizedBox(height: 20),

//             if (_currentPage == 2)
//               Column(
//                 children: [
//                   // Sign In Button
//                   SizedBox(
//                     width: double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 15),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/login');
//                         },
//                         child: const Text(
//                           'Log In',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),

//                   // Sign Up Button
//                   SizedBox(
//                     width: double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: OutlinedButton(
//                         style: OutlinedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 15),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/signup');
//                         },
//                         child: const Text(
//                           'Sign Up',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),

//             // "Next" Button for navigation
//             if (_currentPage < 2)
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 20),
//                 child: TextButton(
//                   onPressed: () {
//                     _pageController.animateToPage(
//                       _currentPage + 1,
//                       duration: const Duration(milliseconds: 300),
//                       curve: Curves.easeInOut,
//                     );
//                   },
//                   child: const Text(
//                     'Next',
//                     style: TextStyle(fontSize: 18, color: Colors.blue),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildOnboardingPage({
//     required String image,
//     required String title,
//     required String description,
//   }) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           image,
//           height: 200,
//         ),
//         const SizedBox(height: 20),
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 10),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(
//             description,
//             style: const TextStyle(fontSize: 16, color: Colors.grey),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );
//   }

//   // Function to build the indicator dots
//   Widget buildDot(int index, int currentPage) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 5),
//       height: 10,
//       width: currentPage == index ? 20 : 10,
//       decoration: BoxDecoration(
//         color: currentPage == index ? Colors.blue : Colors.grey[300],
//         borderRadius: BorderRadius.circular(10),
//       ),
//     );
//   }
// }
