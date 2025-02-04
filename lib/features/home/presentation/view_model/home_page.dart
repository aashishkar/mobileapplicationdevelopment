// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text(
//           "Home",
//         ),
//         backgroundColor: Colors.blue,
//         elevation: 4,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Greeting and Search
//               const Text(
//                 "What Would you like to learn Today?",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search for...",
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Today's Special Section
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "25% OFF*",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       "Today's Special",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       "Get a Discount for Every Course Order only Valid for Today.!",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Categories Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "Categories",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       // Navigate to Categories page
//                     },
//                     child: const Text(
//                       "SEE ALL",
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildCategoryItem("3D Design"),
//                   _buildCategoryItem("Arts & Humanities"),
//                   _buildCategoryItem("Graphic Design"),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               // Popular Courses Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "Popular Courses",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       // Navigate to Popular Courses page
//                     },
//                     child: const Text(
//                       "SEE ALL",
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               _buildCourseCard(
//                 "Graphic Design Advanced",
//                 "Rs 200",
//                 "4.2 ⭐ | 7830 Stud",
//               ),
//               const SizedBox(height: 10),
//               _buildCourseCard(
//                 "3D Animation Basics",
//                 "Rs 300",
//                 "4.5 ⭐ | 5230 Stud",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Method to build a category item
//   Widget _buildCategoryItem(String category) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Text(
//         category,
//         style: const TextStyle(fontSize: 14),
//       ),
//     );
//   }

//   // Method to build a course card
//   Widget _buildCourseCard(String title, String price, String details) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.blue,
//             blurRadius: 5,
//             spreadRadius: 1,
//           ),
//         ],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 80,
//             height: 80,
//             color: Colors.grey.shade300,
//             child: const Center(child: Icon(Icons.image, size: 40)),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   price,
//                   style: const TextStyle(fontSize: 14, color: Colors.green),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   details,
//                   style: const TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
